from django.urls import path

from web import views

urlpatterns = [
    path('teste/', views.teste, name='teste'),
    path('', views.index, name='index'),
    path('more/<int:artista_id>', views.more, name='more'),
]