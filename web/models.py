from django.db import models
import datetime

# Create your models here.
class Artista(models.Model):
    nome = models.TextField()
    nasc = models.DateField()
    img_url = models.TextField()
    
    class Meta:
        db_table = 'artista'
        managed = False

    def idade(self):
        return datetime.date.today().year - self.nasc.year

class Disco(models.Model):
    artista = models.ForeignKey(Artista, on_delete=models.CASCADE)
    titulo = models.TextField()
    url_play = models.TextField(db_column='youtube_url')

    class Meta:
        db_table = 'disco'
        managed = False