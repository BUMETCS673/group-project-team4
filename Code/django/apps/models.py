from django.db import models

# Create your models here.
class Rating(models.Model):
    ratingID = models.AutoField(primary_key=True)
    userID = models.IntegerField()
    movieID = models.IntegerField()
    rating_timestamp = models.DateTimeField(auto_now_add=True)
    rating = models.FloatField()

class User(models.Model):
    userID = models.AutoField(primary_key=True)
    # name = models.CharField(max_length=50)

class Movie(models.Model):
    movieID = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100)
    # genreId = models.IntegerField()
    # genre = models.CharField(max_length=100)

# class Tag(models.Model):
#     tagID = models.AutoField(primary_key=True)
#     tag = models.CharField(max_length=20)

