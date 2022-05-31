from Recommender_Model import Recommender_Model
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
from Db_Connection import extract_user_preference_data

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

condition = None

def train_model():
    user_ids, movie_ids, ratings = extract_user_preference_data(condition)

    # Get number of users and number of movies
    uNum = len(set(user_ids))
    mNum = len(set(movie_ids))
    # Set embedding dimension
    K = 20

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

    model = Recommender_Model(K, uNum, mNum)
    model.compile(optimizer=SGD(lr=1e-2, momentum=3e-1),
                  loss="mse")

    # Fit the model the data is an array of users and movies
    r = model.fit([user_train, movie_train], ratings_train, batch_size=1024, epochs=25,
                  validation_data=([user_test, movie_test], ratings_test))
    # Plot the loss
    plt.plot(r.history["loss"], label="loss")
    plt.plot(r.history["val_loss"], label="val loss")
    plt.legend()
    plt.show()

    if (min(r.histor["val_loss"]) <= 0.6):
        model.save("Recommender_System.h5")

if __name__ == "__main__":
    train_model()