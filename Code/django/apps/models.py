from django.db import models

# Create your models here.
class Rating(models.Model):
    ratingId = models.AutoField(primary_key=True)
    userId = models.IntegerField()
    movieId = models.IntegerField()
    rating = models.FloatField()

class User(models.Model):
    userId = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)

class Movie(models.Model):
    movieId = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100)
    genreId = models.IntegerField()
    
class Genre(models.Model):
    genreId = models.AutoField(primary_key=True)
    genre = models.CharField(max_length=20)

