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

from .models import Rating, User, Movie
from .serializers import RatingSerializer, UserSerializer, MovieSerializer
from .Recommend_Movies import recommend

# Create your views here.
def index(request):
    return render(request, 'index.html')

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def user_api(request, userId):
    if request.method == 'GET':
        user = User.objects.get(userID=userId)
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
        user = User.object.get(userID = user_data['userID'])
        user_serializer = UserSerializer(user, data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        user = User.object.get(userID=userId)
        user.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def rating_api(request, ratingId):
    if request.method == 'GET':
        rating = Rating.objects.get(ratingID=ratingId)
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
        rating = Rating.object.get(ratingID = rating_data['ratingID'])
        rating_serializer = RatingSerializer(rating, data=rating_data)
        if rating_serializer.is_valid():
            rating_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        rating = Rating.object.get(ratingID=ratingId)
        rating.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def movie_api(request, movieId):
    if request.method == 'GET':
        movie = Movie.objects.get(movieID=movieId)
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
        movie = Rating.object.get(movieID = movie_data['movieID'])
        movie_serializer = MovieSerializer(movie, data=movie_data)
        if movie_serializer.is_valid():
            movie_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        movie = Movie.object.get(movieID=movieId)
        movie.delete()
        return JsonResponse('Deleted successfully', safe=False)

def random_suggestions():
    ratings = Rating.objects.values_list('movieID').annotate(movie_count=Count('movieID')).order_by('-movie_count').distinct()
    movies = []
    for i in range(min(30, len(ratings))):
        movies.append(Movie.objects.get(movieID=ratings[i]['movieID']))
        movie_serializer = MovieSerializer(movies, many=True)

    return JsonResponse(movie_serializer.data, safe=False)

@api_view(['GET'])
def recommend_moives(request, userId):
    user = User.objects.get(userID=userId)
    if user is not None:
        movie_ids = recommend(userId)
        movies = []
        for movieId in movie_ids:
            movies.append(Movie.objects.get(movieID=movieId))
            movie_serializer = MovieSerializer(movies, many=True)
            response = JsonResponse(movie_serializer.data, safe=False)
    else:
        response = random_suggestions()

    return response
