# -*- coding: utf-8 -*-
from django.http import HttpResponse
from django.template.loader import get_template
from django.template import Context
from django.shortcuts import render_to_response
import datetime

def hello(request):
    return HttpResponse("<h1>Здравствуй, Мир</h1>")
	
def my_homepage_view(request):
    return HttpResponse("Главная страница")
	
def current_datetime(request):
    now = datetime.datetime.now()    
    return render_to_response('current_datetime.html', {'current_date': now})

def hours_ahead(request, offset):
    try:
        offset = int(offset)
    except ValueError:
        raise Http404()
    dt = datetime.datetime.now() + datetime.timedelta(hours=offset)
    html = "<html><body>In %s hour(s), it will be %s.</body></html>" % (offset, dt)
    return HttpResponse(html)

def main_page(request):
    now = datetime.datetime.now() 
    return render_to_response('index.html')

def foto_handler(request):
    return render_to_response('foto-tatuazh.html')