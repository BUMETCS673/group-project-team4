import json

from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from django.db.models import Count
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status

from .models import Rating, User, Movie, Genre
from .serializers import RatingSerializer, UserSerializer, MovieSerializer, GenreSerializer
from Code.neural_network.Recommend_Movies import recommend

# Create your views here.
def index(request):
    return render(request, 'index.html')

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def user_api(request, userId):
    if request.method == 'GET':
        user = User.objects.get(userId=userId)
        user_serializer = UserSerializer(user, many=True)
        return JsonResponse(user_serializer.data, safe=False)
    elif request.method == 'POST':
        user_data = JSONParser().parse(request)
        user_serializer = UserSerializer(data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse('The user is added successfully', safe=False)
        return JsonResponse('Failed to add', safe=False)
    elif request.method == 'PUT':
        user_data = JSONParser().parse(request)
        user = User.object.get(userId = user_data['userId'])
        user_serializer = UserSerializer(user, data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        user = User.object.get(userId=userId)
        user.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def rating_api(request, ratingId):
    if request.method == 'GET':
        rating = Rating.objects.get(ratingId=ratingId)
        rating_serializer = RatingSerializer(rating, many=True)
        return JsonResponse(rating_serializer.data, safe=False)
    elif request.method == 'POST':
        rating_data = JSONParser().parse(request)
        rating_serializer = RatingSerializer(data=rating_data)
        if rating_serializer.is_valid():
            rating_serializer.save()
            return JsonResponse('The user rating is added successfully', safe=False)
        return JsonResponse('Failed to add', safe=False)
    elif request.method == 'PUT':
        rating_data = JSONParser().parse(request)
        rating = Rating.object.get(ratingId = rating_data['ratingId'])
        rating_serializer = RatingSerializer(rating, data=rating_data)
        if rating_serializer.is_valid():
            rating_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        rating = Rating.object.get(ratingId=ratingId)
        rating.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def movie_api(request, movieId):
    if request.method == 'GET':
        movie = Movie.objects.get(movieId=movieId)
        movie_serializer = MovieSerializer(movie, many=True)
        return JsonResponse(movie_serializer.data, safe=False)
    elif request.method == 'POST':
        movie_data = JSONParser().parse(request)
        movie_serializer = MovieSerializer(data=movie_data)
        if movie_serializer.is_valid():
            movie_serializer.save()
            return JsonResponse('The user rating is added successfully', safe=False)
        return JsonResponse('Failed to add', safe=False)
    elif request.method == 'PUT':
        movie_data = JSONParser().parse(request)
        movie = Rating.object.get(movieId = movie_data['movieId'])
        movie_serializer = MovieSerializer(movie, data=movie_data)
        if movie_serializer.is_valid():
            movie_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        movie = Movie.object.get(movieId=movieId)
        movie.delete()
        return JsonResponse('Deleted successfully', safe=False)

def random_suggestions():
    ratings = Rating.objects.values_list('movieId').annotate(movie_count=Count('movieId')).order_by('-movie_count').distinct()
    movies = []
    for rating in ratings:
        movies.append(Movie.objects.get(movieId=rating['movieId']))
        movie_serializer = MovieSerializer(movies, many=True)

    return JsonResponse(movie_serializer.data, safe=False)

@api_view(['GET'])
def recommend_moives(request, userId):
    user = User.objects.get(userId=userId)
    if user is not None:
        movie_ids = recommend(userId)
        movies = []
        for movieId in movie_ids:
            movies.append(Movie.objects.get(movieId=movieId))
            movie_serializer = MovieSerializer(movies, many=True)
            response = JsonResponse(movie_serializer.data, safe=False)
    else:
        response = random_suggestions()

    return response

def get_unwatched_movies_django(userId):
    if userId is not None:
        user_ratings = Rating.objects.exclude(userId=userId)
    else:
        user_ratings = Rating.objects.all()
    unwatched_movie_ids = []
    for rating in user_ratings:
        unwatched_movie_ids.append(rating['movieId'])

    return unwatched_movie_ids

def extract_user_preference_data_django(userId):
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
    genre_ids = []
    for movie in movies:
        movie_ids.append(movie['movieId'])
        movie_titles.append(movie['title'])
        genre_ids.append(movie['genreId'])

    return movie_ids, movie_titles, genre_ids