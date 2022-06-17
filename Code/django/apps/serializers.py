from rest_framework import serializers
from .models import Rating, User, Movie

class RatingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rating
        fields = ('ratingId', 'userId', 'movieId', 'rating')
    
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('userId', 'name')

class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ('movieId', 'title', 'genre')

# class GenreSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Genre
#         fields = ('genreId', 'genre')