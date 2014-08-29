from django.db import models
from sorl.thumbnail import ImageField

'''class Publisher(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=50)
    city = models.CharField(max_length=60)
    state_province = models.CharField(max_length=30)
    country = models.CharField(max_length=50)
    website = models.URLField()

    def __unicode__(self):
        return self.name

class Author(models.Model):
    salutation = models.CharField(max_length=10)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=40)
    email = models.EmailField(blank=True)
    headshot = models.ImageField(upload_to='/tmp')

    def __unicode__(self):
        return '%s %s' % (self.first_name, self.last_name)

class Book(models.Model):
    title = models.CharField(max_length=100)
    authors = models.ManyToManyField(Author)
    publisher = models.ForeignKey(Publisher)
    publication_date = models.DateField()

    def __unicode__(self):
        return self.title'''

class Foto(models.Model):
	TATUAZH_TYPE = (		
		('Br', 'Brovi'),
		('Gu', 'Gubi'),
		('Gl', 'Glaza'),
	)	
	comment = models.CharField(max_length=100)
	type = models.CharField(max_length=2, default='Br', choices=TATUAZH_TYPE)
	image_location = models.ImageField(upload_to="images/", help_text='970x1024px and 150x150px')