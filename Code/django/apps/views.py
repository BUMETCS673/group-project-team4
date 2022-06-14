import json

from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status

from .models import Rating, User, Movie, Genre
from .serializers import UserPreferenceSerializer, UserSerializer, MovieSerializer, GenreSerializer
from Code.neural_network.Recomend_Movies import save_user_preference, get_unwatched_movies, recommend

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
        user_serializer = UserSerializer(data=user_data)
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
        rating = Rating.objects.get(movieId=ratingId)
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
        rating_serializer = RatingSerializer(data=rating_data)
        if rating_serializer.is_valid():
            rating_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        rating = Rating.object.get(movieId=movieId)
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
        movie_serializer = movieSerializer(data=movie_data)
        if movie_serializer.is_valid():
            movie_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        movie = Movie.object.get(movieId=movieId)
        movie.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET'])
def recommend_moives(request, userId):
    user = User.objects.get(userId=userId)
    movie_data = None
    if user is not None:
        movies = recommend(userId)
        movie_data = json.dumps(movies)

    return HttpResponse(movie_data, 'application/json')
    