from rest_framework import serializers
from .models import Rating, User, Movie

class RatingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rating
        fields = ('ratingID', 'userID', 'movie_timestamp', 'movieID', 'rating')
    
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('userId')

class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ('movieId', 'title')

# class TagSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Tag
#         fields = ('tagID', 'userID', 'movieID', tag, tag_timestamp)