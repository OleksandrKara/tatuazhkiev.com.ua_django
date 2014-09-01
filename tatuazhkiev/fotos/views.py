from django.shortcuts import render
from django.core.mail import send_mail
from django.http import HttpResponseRedirect
from django.shortcuts import render_to_response
from django.http import HttpResponse

# Create your views here.

def xhr_test(request):
	'''send_mail(
		request.POST['name'],
		request.POST['user_phone'],
		'kiev.tatuazh@gmail.com',
		['kiev.tatuazh@gmail.com', 'olexandr.kara@gmail.com'])'''
	message = True
	return HttpResponse(message)

def kontakti_handler(request):
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

def thanks(request):
    return render_to_response('thanks.html')

'''def ajax_mail_sending():
    success = send_mail(
                request.POST['name'],
                "Name:\t "+ request.POST['name']+"\nPhone:\t "+request.POST['user_phone']+"\nMessage: ",
                request.POST.get('olexandr.kara@gmail.com'),
                ['kiev.tatuazh@gmail.com'],
    )
	return true'''