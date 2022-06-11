from Recommender_Model import Recommender_Model
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
from Db_Connection import extract_user_preference_data

import pyodbc
import wget
import zipfile
import tensorflow as tf
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

condition = None

def train_model():
    user_movie_rating_data = extract_user_preference_data(condition)
    user_ids = []
    movie_ids = []
    ratings = []
    for entry in user_movie_rating_data:
        user_ids.append(entry[0])
        movie_ids.append(entry[1])
        ratings.append(entry[2])
    user_ids = np.array(user_ids)
    movie_ids = np.array(movie_ids)
    ratings = np.array(ratings)

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
    for rating in ratings_train:
        rating = float(rating) - mRatings
    for rating in ratings_test:
        rating = float(rating) - mRatings

    model = Recommender_Model(K, uNum, mNum)
    model.compile(optimizer=Adam(lr=1e-2), loss="mse")

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
    # Plot the loss
    plt.plot(r.history["loss"], label="loss")
    plt.plot(r.history["val_loss"], label="val loss")
    plt.legend()
    plt.show()

    # Remove if statement if it returns errors
    if (min(r.history["val_loss"]) <= 0.7):
        model.save("Recommendation_model")

if __name__ == "__main__":
    train_model()