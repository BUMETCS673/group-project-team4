from Recommender_Model import Recommender_Model
from tensorflow import keras
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
# from sklearn.model_selection import train_test_split
# from Db_Connection import insert_user_preference_data, extract_user_preference_data, extract_movie_data
from Code.django.apps.views import get_unwatched_movies_django, extract_user_preference_data_django, extract_movie_data_django

import tensorflow as tf
import numpy as np
import pandas as pd
# import matplotlib.pyplot as plt

# load trained model
condition = None
top_N = 30

try:
    model = keras.models.load_model('Recommendation_model')
except ValueError:
    print("No stored model found for the recommender system.")

# print(model.summary())

user_ids, movie_ids, user_ratings = extract_user_preference_data_django()
new_movie_ids, movie_titles, genre_ids = extract_movie_data_django()
movies = {}
for i in range(len(new_movie_ids)):
    movies[new_movie_ids[i]] = movie_titles[i]

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

    unwatched_movies_ids = get_unwatched_movies_django(user_id)
    unwatched_movies_ids_set = set(unwatched_movies_ids)
    unwatched_movie_index = [[movie2movie_encoded[x]] for x in unwatched_movies_ids_set]
    user_encoder = user2user_encoded[user_id]
    # user_movie_array = np.hstack(([[user_encoder]] * len(unwatched_movies_ids_set), unwatched_movie_index))
    user = np.array([user_id for i in range(len(unwatched_movies_ids_set))])
    unwatched_movies_ids_set = np.array(list(unwatched_movies_ids_set))

    predicted_ratings = model.predict([user, unwatched_movies_ids_set]).flatten()
    top_N_rating_indices = predicted_ratings.argsort()[:top_N][::-1]
    recommended_movie_ids = [movie_encoded2movie.get(unwatched_movie_index[x][0]) for x in top_N_rating_indices]

    # recommended_movies = [movies[i] for i in recommended_movie_ids]
    # print(recommended_movies)

    return recommended_movie_ids

