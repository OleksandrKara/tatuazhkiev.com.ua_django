# -*- coding: utf-8 -*-
from django.http import HttpResponse
from django.template.loader import get_template
from django.template import Context
from django.shortcuts import render_to_response
from django.template import RequestContext
from fotos.models import Foto

import datetime
	
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

def ceni_handler(request):
    return render_to_response('ceni.html')
	
def otzivi_handler(request):
    return render_to_response('otzivi.html')

def faq_handler(request):
    return render_to_response('faq.html')

def kontakti_handler(request):
    return render_to_response('kontakti.html')

def foto_handler(request):
    fotos = Foto.objects.filter(type="Br")
    return render_to_response('foto/foto-tatuazh.html', {'fotos' : fotos}, context_instance = RequestContext(request))

def foto_gubi_handler(request):
    fotos = Foto.objects.filter(type="Gu")
    return render_to_response('foto/foto-tatuazh-gub.html', {'fotos' : fotos}, context_instance = RequestContext(request))

def foto_glaza_handler(request):
    fotos = Foto.objects.filter(type="Gl")
    return render_to_response('foto/foto-tatuazh-glaz.html', {'fotos' : fotos}, context_instance = RequestContext(request))