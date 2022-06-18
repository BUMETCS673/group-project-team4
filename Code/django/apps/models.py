from django.db import models

# Create your models here.
class Rating(models.Model):
    ratingid = models.AutoField(primary_key=True)
    userid = models.IntegerField()
    movieid = models.IntegerField()
    rating_timestamp = models.DateTimeField(auto_now_add=True)
    rating = models.FloatField()

    class Meta:
        db_table = 'rating'   

class User(models.Model):
    userid = models.AutoField(primary_key=True)
    # name = models.CharField(max_length=50)
    class Meta:
        db_table = 'users'   

class Movie(models.Model):
    movieid = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100)
    # genreId = models.IntegerField()
    # genre = models.CharField(max_length=100)
    class Meta:
        db_table = 'movie'

# Commented for future use
# class Tag(models.Model):
#     tagID = models.AutoField(primary_key=True)
#     tag = models.CharField(max_length=20)

