from django.conf.urls import patterns, include, url
from tatuazhkiev.views import *
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib import admin
from tatuazhkiev.fotos import views
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'tatuazhkiev.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),
	#('^date/$', current_datetime),
	#(r'^time/plus/(\d{1,2})/$', hours_ahead),
	(r'^$', main_page),
	(r'^index.html/$', main_page),
	(r'^foto/$', foto_handler),
	(r'^foto/foto-brovi.html/$', foto_handler),
	(r'^foto/foto-tatuazh-gub.html/$', foto_gubi_handler),
	(r'^foto/foto-tatuazh-glaz.html/$', foto_glaza_handler),
	(r'^ceni.html/$', ceni_handler),
	(r'^otzivi.html/$', otzivi_handler),
	(r'^faq.html/$', faq_handler),
	(r'^kontakti.html/$', kontakti_handler),
	(r'^contact_form/$', views.contact_form),
	(r'^contact/$', views.contact),
    (r'^contact/thanks/$', views.thanks),
)

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += staticfiles_urlpatterns()