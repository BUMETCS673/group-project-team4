from .models import Rating, User, Movie
import pandas as pd

def get_unwatched_movies_django(userId=None):
    if userId is not None:
        unwatched_movies = Rating.objects.exclude(userid=userId).values('movieid').distinct()
    else:
        unwatched_movies = Rating.objects.all().values('movieid').distinct()
    unwatched_movie_ids = []
    for id in unwatched_movies:
        unwatched_movie_ids.append(id['movieid'])
    df = pd.DataFrame(unwatched_movie_ids, columns=['unwatched_movie_ids'])
    df["new_movie_id"] = df.unwatched_movie_ids.astype('category').cat.codes
    unwatched_movie_ids = df["new_movie_id"].values

    return unwatched_movie_ids

def extract_user_preference_data_django(userId=None):
    if userId is not None:
        ratings = Rating.objects.filter(userid=userId).values()
    else:
        ratings = Rating.objects.all().values()
    user_ids = []
    movie_ids = []
    user_ratings = []
    for rating in ratings:
        user_ids.append(rating['userid'])
        movie_ids.append(rating['movieid'])
        user_ratings.append(rating['rating'])

    return user_ids, movie_ids, user_ratings

def extract_movie_data_django():
    movies = Movie.objects.all().values()
    movie_ids = []
    movie_titles = []
    for movie in movies:
        movie_ids.append(movie['movieid'])
        movie_titles.append(movie['title'])

    df = pd.DataFrame(movie_ids, columns=['movie_ids'])
    df["new_movie_id"] = df.movie_ids.astype('category').cat.codes
    movie_ids = df["new_movie_id"].values

    return movie_ids, movie_titles