from django.shortcuts import render
from django.http import HttpResponse

from .models import Artista, Disco
from .forms import ArtistaForm, DiscoForm

def teste(request):
    return HttpResponse("Hello, world! This is my test.")

def index(request):
    artistas = Artista.objects.all()
    return render(request, 'index.html', {'artistas': artistas} ) 


def more(request, artista_id=None):
    disco = Disco.objects.get(artista = artista_id) 

    discoForm =  DiscoForm()

    return render(request, 'more.html', {'disco':disco, 'discoForm':discoForm })
