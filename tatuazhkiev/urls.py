from django.conf.urls import patterns, include, url
from tatuazhkiev.views import hello, my_homepage_view, current_datetime, hours_ahead, main_page
from django.conf import settings
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'tatuazhkiev.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
	('^hello/$', hello),
	('^$', main_page),
	('^date/$', current_datetime),
	(r'^time/plus/(\d{1,2})/$', hours_ahead),
	('^index/$', main_page),
)

if settings.DEBUG:
    urlpatterns += patterns('',
        url(r'^static/(?P<path>.*)$', 'django.views.static.serve', {
            'document_root': settings.MEDIA_ROOT,
        }),
   )