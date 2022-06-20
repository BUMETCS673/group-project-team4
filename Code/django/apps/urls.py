from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('user/<int:userId>', views.user_api),
    path('movie/<int:movieId>', views.movie_api),
    path('rating/<int:ratingId>', views.rating_api),
    path('recommend/<int:userId>', views.recommend_moives)
]