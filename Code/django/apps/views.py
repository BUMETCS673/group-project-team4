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
top_N = 30

def index(request):
    return render(request, 'index.html')

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def user_api(request, userId):
    if request.method == 'GET':
        user = User.objects.filter(userid=userId)
        user_serializer = UserSerializer(user, many=True)
        return JsonResponse(user_serializer.data, safe=False)
    elif request.method == 'POST':
        request.data['userid'] = userId
        user_data = request.data
        user_serializer = UserSerializer(data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse('The user is added successfully', safe=False)
        return JsonResponse('Failed to add', safe=False)
    elif request.method == 'PUT':
        request.data['userid'] = userId
        user_data = request.data
        user = User.objects.get(userid = user_data['userid'])
        user_serializer = UserSerializer(user, data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        user = User.objects.filter(userid=userId)
        user.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def rating_api(request, ratingId):
    if request.method == 'GET':
        rating = Rating.objects.filter(ratingid=ratingId)
        rating_serializer = RatingSerializer(rating, many=True)
        return JsonResponse(rating_serializer.data, safe=False)
    elif request.method == 'POST':
        request.data['ratingid'] = ratingId
        rating_data = request.data
        rating_serializer = RatingSerializer(data=rating_data)
        if rating_serializer.is_valid():
            rating_serializer.save()
            return JsonResponse('The user rating is added successfully', safe=False)
        return JsonResponse('Failed to add', safe=False)
    elif request.method == 'PUT':
        request.data['ratingid'] = ratingId
        rating_data = request.data
        rating = Rating.objects.filter(ratingid = rating_data['ratingid'])
        rating_serializer = RatingSerializer(rating, data=rating_data)
        if rating_serializer.is_valid():
            rating_serializer.update()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        rating = Rating.objects.filter(ratingid=ratingId)
        rating.delete()
        return JsonResponse('Deleted successfully', safe=False)

@api_view(['GET', 'POST', 'PUT', 'DELETE'])
def movie_api(request, movieId):
    if request.method == 'GET':
        movie = Movie.objects.filter(movieid=movieId)
        movie_serializer = MovieSerializer(movie, many=True)
        return JsonResponse(movie_serializer.data, safe=False)
    elif request.method == 'POST':
        request.data['movieid'] = movieId
        movie_data = request.data
        movie_serializer = MovieSerializer(data=movie_data)
        if movie_serializer.is_valid():
            movie_serializer.save()
            return JsonResponse('The user rating is added successfully', safe=False)
        return JsonResponse('Failed to add', safe=False)
    elif request.method == 'PUT':
        request.data['movieid'] = movieId
        movie_data = request.data
        movie = Rating.objects.filter(movieid = movie_data['movieid'])
        movie_serializer = MovieSerializer(movie, data=movie_data)
        if movie_serializer.is_valid():
            movie_serializer.update()
            return JsonResponse('Update successfully', safe=False)
        return JsonResponse('Failed to update', safe=False)
    elif request.method == 'DELETE':
        movie = Movie.objects.filter(movieid=movieId)
        movie.delete()
        return JsonResponse('Deleted successfully', safe=False)

def random_suggestions():
    ratings = Rating.objects.values_list('movieid').annotate(movie_count=Count('movieid')).order_by('-movie_count').distinct()
    movies = []
    count = 0
    for rating in ratings:
        count += 1
        movies.append(Movie.objects.filter(movieid=rating['movieid']))
        movie_serializer = MovieSerializer(movies, many=True)

    return JsonResponse(movie_serializer.data, safe=False)

@api_view(['GET'])
def recommend_moives(request, userId):
    user = User.objects.filter(userid=userId)
    if user is not None:
        movie_ids = recommend(userId)
        movies = Movie.objects.filter(movieid__in=movie_ids)[:top_N]
        movie_serializer = MovieSerializer(movies, many=True)
        response = JsonResponse(movie_serializer.data, safe=False)
    else:
        response = random_suggestions()

    return response
