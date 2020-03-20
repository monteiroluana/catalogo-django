from django import forms
from django.forms import ModelForm

from .models import Artista

class ArtistaForm(ModelForm):
    class Meta:
        model = Artista
        fields = ['nome', 'nasc', 'img_url']

class DiscoForm(forms.Form):
    titulo = forms.CharField(label='Título do álbum', required=True)
    url_play = forms.CharField(label='YouTube key', required=True)
    lancamento = forms.CharField(label='Data de Lancamento', required=True)
    img_url = forms.CharField(label='Foto url', required=True)


class UserForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True)
    email = forms.CharField(required=True)
    firstname = forms.CharField(required=True)
    lastname = forms.CharField(required=True)
    