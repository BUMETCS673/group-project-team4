from .models import Rating, User, Movie

def get_unwatched_movies_django(userId=None):
    if userId is not None:
        user_ratings = Rating.objects.exclude(userId=userId)
    else:
        user_ratings = Rating.objects.all()
    unwatched_movie_ids = []
    for rating in user_ratings:
        unwatched_movie_ids.append(rating['movieId'])

    return unwatched_movie_ids

def extract_user_preference_data_django(userId=None):
    if userId is not None:
        ratings = Rating.objects.filter(userId=userId)
    else:
        ratings = Rating.objects.all()
    user_ids = []
    movie_ids = []
    user_ratings = []
    for rating in ratings:
        user_ids.append(rating['userId'])
        movie_ids.append(rating['movieId'])
        user_ratings.append(rating['rating'])

    return user_ids, movie_ids, user_ratings

def extract_movie_data_django():
    movies = Movie.objects.all()
    movie_ids = []
    movie_titles = []
    genres = []
    for movie in movies:
        movie_ids.append(movie['movieId'])
        movie_titles.append(movie['title'])
        genres.append(movie['genre'])

    return movie_ids, movie_titles, genres