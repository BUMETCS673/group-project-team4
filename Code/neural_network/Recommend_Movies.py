from Recommender_Model import Recommender_Model
from tensorflow import keras
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split
from Db_Connection import insert_user_preference_data, extract_user_preference_data, extract_movie_data
from Code.django.apps.views import get_unwatched_movies_django, extract_user_preference_data_django

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# load trained model
condition = None
top_N = 30

try:
    model = keras.models.load_model('Recommendation_model')
except ValueError:
    print("No stored model found for the recommender system.")

user_ids, movie_ids, ratings = extract_user_preference_data_django(condition)

def save_user_preference(user_ids, movie_ids, ratings):
    insert_user_preference_data(user_ids, movie_ids, ratings)

def get_unwatched_movies(user_id):
    condition = "UserId != " + user_id if user_id is not None else None
    unwatched_movies = extract_movie_data(condition)
    unwatched_movie_ids = unwatched_movies[0]
    unwatched_movie = unwatched_movies[1]

    return unwatched_movie_ids, unwatched_movie

def recommend(user_id):
    user2user_encoded = {user_ids[i]: i for i in range(len(user_ids))}
    user_encoded2user = {i: user_ids[i] for i in range(len(user_ids))}
    movie2movie_encoded = {movie_ids[i]: i for i in range(len(movie_ids))}
    movie_encoded2movie = {i: movie_ids[i] for i in range(len(movie_ids))}

    unwatched_movies_ids = get_unwatched_movies_django(user_id)
    unwatched_movie_index = [[movie2movie_encoded.get[x]] for x in unwatched_movies_ids]
    user_encoder = user2user_encoded.get(user_id)
    user_movie_array = np.hstack(([[user_encoder]] * len(unwatched_movies_ids), unwatched_movie_index))

    predicted_ratings = model.predict([user_movie_array[:, 0], user_movie_array[:, 1]]).flatten()
    top_N_rating_indices = predicted_ratings.argsort()[top_N:][::-1]
    recommended_movie_ids = [movie_encoded2movie.get(unwatched_movie_index[x][0]) for x in top_N_rating_indices]
    movies = extract_movie_data()
    recommended_movies = [movies[i] for i in recommended_movie_ids]

    # Return movie ids, movie titles and movie genres
    return recommended_movies


