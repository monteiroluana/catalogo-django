from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.contrib.auth.models import User

from .models import Artista, Disco
from .forms import ArtistaForm, DiscoForm, UserForm

def teste(request):
    return HttpResponse("Hello, world! This is my test.")


def logout_view(request):
    logout(request)
    return redirect('index') 

def new_register(request):
    if request.method == 'POST':
        userForm = UserForm(request.POST)

        if userForm.is_valid():
            user = User.objects.create_user(
                userForm.cleaned_data['username'],
                userForm.cleaned_data['email'],
                userForm.cleaned_data['password'],)
            user.fist_name = userForm.cleaned_data['firstname']
            user.last_name = userForm.cleaned_data['lastname']
            
            user.save()

            return redirect('index')

    else:
        userForm = UserForm()

    return render(request, 'register.html',{'userForm':userForm})


@login_required
def index(request):
    artistas = Artista.objects.all().order_by('nome')

    if request.method == 'POST':
        artistaForm = ArtistaForm(request.POST)

        if artistaForm.is_valid() and artistaForm.cleaned_data['nome']:
            try:
                people = Artista.objects.get(nome = artistaForm.cleaned_data['nome'])
            except Artista.DoesNotExist:
                people = Artista(nome=artistaForm.cleaned_data['nome'])
  
            people.nasc = artistaForm.cleaned_data['nasc']
            people.img_url = artistaForm.cleaned_data['img_url']
            people.save()

            return redirect('index')
    else:
        artistaForm = ArtistaForm()

    return render(request, 'index.html', {'artistas': artistas, 'artistaForm':artistaForm} ) 


@login_required
def details(request, artista_id=None):
    discos = Disco.objects.filter(artista = artista_id) 
    
    if request.method == 'POST':
        discoForm = DiscoForm(request.POST)

        if discoForm.is_valid():           
            
            Disco.objects.create(
                artista = Artista.objects.get(id = artista_id),
                titulo = discoForm.cleaned_data['titulo'],
                url_play = discoForm.cleaned_data['url_play'],
                lancamento = discoForm.cleaned_data['lancamento'],
                img_url = discoForm.cleaned_data['img_url'],
            )
    else:
        discoForm =  DiscoForm()

    return render(request, 'more.html', {'discos':discos, 'discoForm':discoForm })


def delete_disc(request, artista_id, disc_id):
    disco = Disco.objects.get(id = disc_id).delete()
    return redirect('more', artista_id=artista_id)