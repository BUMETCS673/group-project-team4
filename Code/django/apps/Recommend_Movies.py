from tensorflow import keras
from tensorflow.keras.optimizers import SGD, Adam
from sklearn.utils import shuffle
# from sklearn.model_selection import train_test_split
from .Db_Connection import get_unwatched_movies_django, extract_user_preference_data_django, extract_movie_data_django

import tensorflow as tf
import numpy as np
import pandas as pd

# load trained model
condition = None
top_N = 100

try:
    model = keras.models.load_model('apps/Recommendation_model')
except ValueError:
    print("No stored model found for the recommender system.")

def recommend(user_id):
    new_movie_ids, movie_titles = extract_movie_data_django()
    movies = {}
    for i in range(len(new_movie_ids)):
        movies[new_movie_ids[i]] = movie_titles[i]

    movie2movie_encoded = {new_movie_ids[i]: i for i in range(len(new_movie_ids))}
    movie_encoded2movie = {i: new_movie_ids[i] for i in range(len(new_movie_ids))}

    unwatched_movies_ids = get_unwatched_movies_django(user_id)
    unwatched_movie_index = [[movie2movie_encoded[x]] for x in unwatched_movies_ids]
    user = np.array([user_id for i in range(len(unwatched_movies_ids))])
    unwatched_movies_ids = np.array(list(unwatched_movies_ids))

    predicted_ratings = model.predict([user, unwatched_movies_ids]).flatten()
    top_N_rating_indices = predicted_ratings.argsort()[:top_N][::-1]
    recommended_movie_ids = [movie_encoded2movie.get(unwatched_movie_index[x][0]) for x in top_N_rating_indices]

    return recommended_movie_ids
