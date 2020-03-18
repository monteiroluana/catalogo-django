from django import forms
from django.forms import ModelForm

from .models import Artista

class ArtistaForm(ModelForm):
    class Meta:
        model = Artista
        fields = ['nome', 'nasc', 'img_url']

class DiscoForm(forms.Form):
    titulo = forms.CharField()
    url_play = forms.CharField()