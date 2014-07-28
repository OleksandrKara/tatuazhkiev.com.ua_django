# -*- coding: utf-8 -*-
from django.http import HttpResponse

def hello(request):
    return HttpResponse("<h1>Здравствуй, Мир</h1>")
def my_homepage_view(request):
	return HttpResponse("Главная страница")