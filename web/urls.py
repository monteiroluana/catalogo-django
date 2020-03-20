from django.urls import path

from web import views

urlpatterns = [
    path('teste/', views.teste, name='teste'),
    
    path('', views.index, name='index'),
    path('details/<int:artista_id>', views.details, name='details'),
    path('delete_disc/<int:artista_id>/<int:disc_id>',views.delete_disc, name="delete_disc"),

    path('logout',views.logout_view, name="out"),
    path('new_register',views.new_register, name="new_register"),
]