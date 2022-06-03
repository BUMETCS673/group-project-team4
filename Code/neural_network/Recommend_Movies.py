from Recommender_Model import Recommender_Model
from tensorflow import keras
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
from Db_Connection import insert_user_preference_data, extract_user_preference_data, extract_movie_data

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# load trained model
try:
    model = keras.models.load_model('Recommendation_model')
except ValueError:
    print("No stored model found for the recommender system.")

def save_user_preference(user_ids, movie_ids, ratings):
    insert_user_preference_data(user_ids, movie_ids, ratings)

def get_unwatched_movies(user_id):
    condition = "UserId != " + user_id if user_id is not None else None
    movie_ids, titles, genres = extract_movie_data(condition)
    unwatched_movie_ids = movie_ids
    unwatched_movie = titles

    return unwatched_movie_ids, unwatched_movie


