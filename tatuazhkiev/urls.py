from django.conf.urls import patterns, include, url
from tatuazhkiev.views import *
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'tatuazhkiev.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),
	#('^date/$', current_datetime),
	#(r'^time/plus/(\d{1,2})/$', hours_ahead),
	('^$', main_page),
	('^index.html/$', main_page),
	('^foto/$', foto_handler),
	('^foto/foto-brovi.html/$', foto_handler),
	('^foto/foto-tatuazh-gub.html/$', foto_gubi_handler),
	('^foto/foto-tatuazh-glaz.html/$', foto_glaza_handler),
	('^ceni.html/$', ceni_handler),
	('^otzivi.html/$', otzivi_handler),
	('^faq.html/$', faq_handler),
	('^kontakti.html/$', kontakti_handler),
	
)

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += staticfiles_urlpatterns()