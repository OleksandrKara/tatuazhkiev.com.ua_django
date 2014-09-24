Helpful commands:
- python manage.py runserver - run server
- python manage.py shell - run shell
- python manage.py startapp <Name of app> - creating folder with application files
- python manage.py syncdb - creating tables in database(using models sructure)
- python manage.py dbshell - using sql in python shell

----------------------------------------------------------------------------------------

Items for future:
- 1) Enable email sending using ajax - DONE
- 2) Enable email sending in contact form - DONE
- 3) Make site map as dynamic feature - DONE
- 4) Improving url schema - DONE
- 5) Adding text to the foto fields
- 6) Updating all text information for seo optimization
- 7) Adding sections with text content for seo
- 8) Improving css styles and improving web site templates
- 9) Change ceny.html template with Anna
- 10) Make hyperlink to odnoklassniki page and to facebook
- 11) To order 3 slide image at ui designer
- 12) Create 2 menu items more, "Статьи", "О мастере"

----------------------------------------------------------------------------------------

Installing additional apps:
- pip install sorl-thumbnail - for images resizing

----------------------------------------------------------------------------------------

- https://github.com/mjr27/django-flatpages-tinymce -  for tinymce editing(dont forget to switch "default lib" to "from django.conf.urls import patterns, url, include" in "C:\Program Files\Python\Lib\site-packages\flatpages_tinymce")
- To remove not necessery code in C:\Program Files\Python\Lib\site-packages\flatpages_tinymce\admin.py
- '''elif db_field.name == "template_name":
            prev_field = super(FlatPageAdmin, self).formfield_for_dbfield(db_field, **kwargs)
            return forms.FilePathField(label=prev_field.label,
                                       path=settings.TEMPLATE_DIR,
                                       required=False,
                                       recursive=False,
                                       match=settings.TEMPLATE_FILES_REGEXP,
                                       )'''



http://www.lfd.uci.edu/~gohlke/pythonlibs/ - exe files for windows

Do not to forget to use virtualenv
