from Recommender_Model import Recommender_Model
from tensorflow import keras
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
# from sklearn.model_selection import train_test_split
# from Db_Connection import insert_user_preference_data, extract_user_preference_data, extract_movie_data
# from apps.views import get_unwatched_movies_django, extract_user_preference_data_django, extract_movie_data_django

import tensorflow as tf
import numpy as np
import pandas as pd
# import matplotlib.pyplot as plt


#
# user_ids, movie_ids, ratings = shuffle(user_ids, movie_ids, ratings)
# # 4:1 train-test ratio
# brk = int(0.8 * len(user_ids))
# user_train = user_ids[:brk]
# movie_train = movie_ids[:brk]
# ratings_train = ratings[:brk]
#
# user_test = user_ids[brk:]
# movie_test = movie_ids[brk:]
# ratings_test = ratings[brk:]
# # Center the ratings (Normalization without dividing standard deviation)
# mRatings = np.mean(ratings)
# ratings_train -= mRatings
# ratings_test -= mRatings

# user_ids, movie_ids, user_ratings = extract_user_preference_data_django()
# new_movie_ids, movie_titles, genre_ids = extract_movie_data_django()
# movies = {}
# for i in range(len(new_movie_ids)):
#     movies[new_movie_ids[i]] = movie_titles[i]

# def save_user_preference(user_ids, movie_ids, ratings):
#     insert_user_preference_data(user_ids, movie_ids, ratings)
#
# def get_unwatched_movies(user_id):
#     condition = "UserId != " + user_id if user_id is not None else None
#     unwatched_movies = extract_movie_data(condition)
#     unwatched_movie_ids = unwatched_movies[0]
#     unwatched_movie = unwatched_movies[1]
#
#     return unwatched_movie_ids, unwatched_movie

def recommend(user_id):
    user2user_encoded = {user_ids[i]: i for i in range(len(user_ids))}
    user_encoded2user = {i: user_ids[i] for i in range(len(user_ids))}
    movie2movie_encoded = {new_movie_ids[i]: i for i in range(len(new_movie_ids))}
    movie_encoded2movie = {i: new_movie_ids[i] for i in range(len(new_movie_ids))}

    # unwatched_movies_ids = get_unwatched_movies_django(user_id)
    unwatched_movies_ids_set = set(unwatched_movies_ids)
    unwatched_movie_index = [[movie2movie_encoded[x]] for x in unwatched_movies_ids_set]
    user_encoder = user2user_encoded[user_id]
    # user_movie_array = np.hstack(([[user_encoder]] * len(unwatched_movies_ids_set), unwatched_movie_index))
    user = np.array([user_id for i in range(len(unwatched_movies_ids_set))])
    unwatched_movies_ids_set = np.array(list(unwatched_movies_ids_set))

    predicted_ratings = model.predict([user, unwatched_movies_ids_set]).flatten()
    top_N_rating_indices = predicted_ratings.argsort()[:top_N][::-1]
    recommended_movie_ids = [movie_encoded2movie.get(unwatched_movie_index[x][0]) for x in top_N_rating_indices]

    # movies = extract_movie_data()
    recommended_movies = [movies[i] for i in recommended_movie_ids]
    print(recommended_movies)

    return recommended_movie_ids

if __name__ == "__main__":
        # load trained model
    condition = None
    top_N = 30

    import sys
    sys.path.insert(0, "C:/Users/easht/Documents/GitHub/group-project-team4/Code/neural_network")
    model = tf.saved_model.load("C:/Users/easht/Documents/GitHub/group-project-team4/Code/neural_network/Recommendation_model")

    #try:
        #model = keras.models.load_model('C:/Users/easht/Documents/GitHub/group-project-team4/Code/neural_network/Recommendation_model')
    #except ValueError:
        #print("No stored model found for the recommender system.")

    print(type(model))

    print(model.summary())

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
    print(df.head())
    movie_titles = df["title"].values
    df.movieId = pd.Categorical(df.movieId)
    df["new_movie_id"] = df.movieId.cat.codes
    new_movie_ids = df["new_movie_id"].values
    movies = {}
    for i in range(len(new_movie_ids)):
        movies[new_movie_ids[i]] = movie_titles[i]
    recommend(7)