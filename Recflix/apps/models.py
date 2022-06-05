from django.db import models

# Create your models here.
class UserPreference(models.Model):
    userId = models.IntegerField()
    movieId = models.IntegerField()
    rating = models.FloatField()

class User(models.Model):
    name = models.CharField(max_length=50)

class Movie(models.Model):
    title = models.CharField(max_length=100)
    genreId = models.IntegerField()
    
class Genre(models.Model):
    genre = models.CharField(max_length=20)

