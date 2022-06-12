import pandas as pd
import numpy as np
ratings_all_data = pd.read_csv('C:/Users/easht/Documents/CS 673/Movie Database/ratings.csv')
ratings_all_data.info()

userIds = []
movieIds = []
ratings = []
for index, row in ratings_all_data.iterrows():
    userIds.append(int(row[0]))
    movieIds.append(int(row[1]))
    ratings.append(row[2])

n_movie_ratings = len(movieIds)
n_unique_movies = len(set(movieIds))
movie_id_lookup = dict(zip(set(movieIds), range(n_unique_movies)))
movie_id_recoded = []
for i in range(n_movie_ratings):
    movie_id_recoded.append(movie_id_lookup[movieIds[i]])
dataframe_with_recode = pd.DataFrame(list(zip(userIds,movie_id_recoded,ratings)),columns= ['userId','movieId','rating'])
dataframe_with_recode.to_csv('C:/Users/easht/Documents/CS 673/Movie Database/ratings_with_movie_recode.csv', header = True, index = False)
