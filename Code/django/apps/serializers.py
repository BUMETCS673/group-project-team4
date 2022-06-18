from rest_framework import serializers
from .models import Rating, User, Movie

class RatingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rating
        fields = ('ratingid', 'userid', 'movieid', 'rating_timestamp', 'rating')

    def to_representation(self, instance):
        my_fields = {'ratingid', 'userid', 'movieid', 'rating_timestamp', 'rating'}
        data = super().to_representation(instance)
        for field in my_fields:
            try:
                if not data[field]:
                    data[field] = ""
            except KeyError:
                pass
        return data
    
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('userid',)

    def to_representation(self, instance):
        my_fields = {'userid',}
        data = super().to_representation(instance)
        for field in my_fields:
            try:
                if not data[field]:
                    data[field] = ""
            except KeyError:
                pass
        return data

class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ('movieid', 'title')

    def to_representation(self, instance):
        my_fields = {'movieid', 'title'}
        data = super().to_representation(instance)
        for field in my_fields:
            try:
                if not data[field]:
                    data[field] = ""
            except KeyError:
                pass
        return data

# Commented for future use
# class TagSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Tag
#         fields = ('tagID', 'userID', 'movieID', tag, tag_timestamp)