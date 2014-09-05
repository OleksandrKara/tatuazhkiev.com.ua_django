from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib import admin
from tatuazhkiev.sitemap import SitemapXML

from django.contrib.sitemaps import FlatPageSitemap, GenericSitemap
from django.contrib.sitemaps.views import sitemap
from tatuazhkiev.fotos.models import Foto
from django.contrib.flatpages import views

info_dict = {
    'queryset': Foto.objects.all(),
    'date_field': 'date',
}

sitemaps = {
    'flatpages': FlatPageSitemap,
    'fotos': GenericSitemap(info_dict, priority=0.6),
}

admin.autodiscover()

sitemaps = {'main':SitemapXML}

urlpatterns = patterns('tatuazhkiev.views',
    
	(r'^$', 'main_page'),
	(r'^index.html/?$', 'main_page'),
	(r'^index/?$', 'main_page'),
	(r'^foto/$', 'foto_handler'),
	(r'^foto/foto-brovi/$', 'foto_handler'),
	(r'^foto/foto-tatuazh-gub/$', 'foto_gubi_handler'),
	(r'^foto/foto-tatuazh-glaz/$', 'foto_glaza_handler'),
	(r'^ceni/$', 'ceni_handler'),
	(r'^otzivi/$', 'otzivi_handler'),
	(r'^faq/$', 'faq_handler'),
)

urlpatterns += patterns('',
    # http://host/sitemap.xml
    (r'^sitemap\.xml$', 'django.contrib.sitemaps.views.sitemap', {'sitemaps':sitemaps}),
)

urlpatterns += patterns('',
    url(r'^admin/', include(admin.site.urls)),
)

urlpatterns += patterns('tatuazhkiev.fotos.views',
    (r'^kontakti/$', 'kontakti_handler'),
	(r'^contact/$', 'kontakti_handler'),
    (r'^thanks/$', 'thanks'),
	(r'^xhr_test$', 'xhr_test'),
)





urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += staticfiles_urlpatterns()