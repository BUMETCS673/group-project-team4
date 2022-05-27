from Db_Connection import insert_user_preference_data, extract_user_preference_data

import wget
import zipfile
import numpy as np
import pandas as pd

# Get the movielens data
wget.download("http://files.grouplens.org/datasets/movielens/ml-20m.zip")
# Unzip the zip file
with zipfile.ZipFile("ml-20m.zip", "r") as zip_ref:
    zip_ref.extractall()
"""
Uncomment the code above if you do not have those files
"""
# Read 'ratings.csv' from the ml-20m directory and print the head of the data
df = pd.read_csv("ml-20m/ratings.csv")
df.userId = pd.Categorical(df.userId)
df["new_user_id"] = df.userId.cat.codes
df.movieId = pd.Categorical(df.movieId)
df["new_movie_id"] = df.movieId.cat.codes
# print(df.head())

# Get user_ids , movie_ids, and ratings as separate arrays
user_ids = df["new_user_id"].values
movie_ids = df["new_movie_id"].values
ratings = df["rating"].values

def load_data():
    insert_user_preference_data(user_ids, movie_ids, ratings)

