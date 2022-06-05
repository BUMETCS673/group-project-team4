from django.shortcuts import render
from django.http import HttpResponse
from Code.neural_network import Data_Loader

# Create your views here.
def index(reqest):
    return render(reqest, 'index.html')

