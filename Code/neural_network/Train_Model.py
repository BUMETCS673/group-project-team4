from Recommender_Model import Recommender_Model
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
# from Db_Connection import extract_user_preference_data
# from Code.django.apps.views import rating_api

# import pyodbc
# import wget
import zipfile
import tensorflow as tf
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

condition = None

def train_model():
    df = pd.read_csv("C:/Users/easht/Documents/CS 673/Movie Database/merged.csv")
    df.userId = pd.Categorical(df.userId)
    df["new_user_id"] = df.userId.cat.codes
    df.movieId = pd.Categorical(df.movieId)
    df["new_movie_id"] = df.movieId.cat.codes
    # print(df.head())
    user_id = 4
    # Get user_ids , movie_ids, and ratings as separate arrays
    user_ids = df["new_user_id"].values
    movie_ids = df["new_movie_id"].values
    unwatched_movies_ids = df[df.userId != user_id]['new_movie_id'].values
    ratings = df["rating"].values
    movie_titles = df["title"].values
    df.movieId = pd.Categorical(df.movieId)
    df["new_movie_id"] = df.movieId.cat.codes
    new_movie_ids = df["new_movie_id"].values
    movies = {}
    for i in range(len(new_movie_ids)):
        movies[new_movie_ids[i]] = movie_titles[i]

    # Get number of users and number of movies
    uNum = len(set(user_ids))
    mNum = len(set(movie_ids))
    # Set embedding dimension
    K = 50

    # Shuffle and split the data
    user_ids, movie_ids, ratings = shuffle(user_ids, movie_ids, ratings)
    # 4:1 train-test ratio
    brk = int(0.8 * len(user_ids))
    user_train = user_ids[:brk]
    movie_train = movie_ids[:brk]
    ratings_train = ratings[:brk]

    user_test = user_ids[brk:]
    movie_test = movie_ids[brk:]
    ratings_test = ratings[brk:]
    # Center the ratings (Normalization without dividing standard deviation)
    mRatings = np.mean(ratings)
    ratings_train -= mRatings
    ratings_test -= mRatings

    user2user_encoded = {user_ids[i]: i for i in range(len(user_ids))}
    user_encoded2user = {i: user_ids[i] for i in range(len(user_ids))}
    movie2movie_encoded = {movie_ids[i]: i for i in range(len(movie_ids))}
    movie_encoded2movie = {i: movie_ids[i] for i in range(len(movie_ids))}
    
    unwatched_movie_index = [[movie2movie_encoded[x]] for x in unwatched_movies_ids]
    user_encoder = user2user_encoded[user_id]
    user_movie_array = np.hstack(([[user_encoder]] * len(unwatched_movies_ids), unwatched_movie_index))

    model = Recommender_Model(K, uNum, mNum)
    model.compile(optimizer=SGD(lr=1e-2, momentum=3e-1),
                  loss="mse")

    # Create a scheduler to change the learning rate
    def schedule(epoch, lr):
        if epoch >= 20:
            return 1e-3
        return 1e-2

    scheduler = tf.keras.callbacks.LearningRateScheduler(schedule)
    callback = tf.keras.callbacks.EarlyStopping(monitor='loss', patience=3)
    # Fit the model the data is an array of users and movies
    r = model.fit([user_train, movie_train], ratings_train, batch_size=1024, epochs=25,
                  validation_data=([user_test, movie_test], ratings_test), callbacks=[callback, scheduler])
    #predicted_ratings = model.predict([user_movie_array[:, 0], user_movie_array[:, 1]]).flatten()
    #top_N_rating_indices = predicted_ratings.argsort()[30:][::-1]
    #recommended_movie_ids = [movie_encoded2movie.get(unwatched_movie_index[x][0]) for x in top_N_rating_indices]
    # movies = extract_movie_data()
    #recommended_movies = [movies[i] for i in recommended_movie_ids]
    #print(recommended_movies)
    # Plot the loss
    plt.plot(r.history["loss"], label="loss")
    plt.plot(r.history["val_loss"], label="val loss")
    plt.legend()
    plt.show()


    model.save("Recommendation_model_6_16")
    model.save("Rec_model_6_16.h5")
    model.save_weights('model weights_6_16')

if __name__ == "__main__":
    train_model()