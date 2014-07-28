from django.conf.urls import patterns, include, url
from tatuazhkiev.views import hello, my_homepage_view
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'tatuazhkiev.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
	('^hello/$', hello),
	('^$', my_homepage_view),
	
)