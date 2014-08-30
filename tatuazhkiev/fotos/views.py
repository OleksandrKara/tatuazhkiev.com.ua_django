from django.shortcuts import render
from django.core.mail import send_mail
from django.http import HttpResponseRedirect
from django.shortcuts import render_to_response

# Create your views here.

def contact(request):
    errors = []
    if request.method == 'POST':
        if not request.POST.get('subject', ''):
            errors.append('Enter a subject.')
        if not request.POST.get('message', ''):
            errors.append('Enter a message.')
        if not request.POST.get('phone', ''):
            errors.append('Please enter phone.')
        if not errors:
            send_mail(
                request.POST['subject'],
                "Name:\t "+ request.POST['subject']+"\nPhone:\t "+request.POST['phone']+"\nMessage: "+request.POST['message'],
                request.POST.get('olexandr.kara@gmail.com'),
                ['kiev.tatuazh@gmail.com'],
            )
            return HttpResponseRedirect('/thanks/')
    return render_to_response('kontakti.html/',
        {'errors': errors})

def contact_form(request):
    return render_to_response('kontakti.html/')

def thanks(request):
    return render_to_response('thanks.html')
