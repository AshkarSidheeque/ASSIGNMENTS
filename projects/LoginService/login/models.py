from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
# Create your models here.
class Profile(models.Model):
	def validate_image(fieldfile_obj):
		filesize = fieldfile_obj.file.size
		megabyte_limit = 5.0
		if filesize > megabyte_limit*1024*1024:
			raise ValidationError("Max file size is %sMB" % str(megabyte_limit))

	GENDER_CHOICES = (
	    ('M', 'Male'),
	    ('F', 'Female'),
	)
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	photo = models.ImageField(upload_to='static/media',validators=[validate_image])
	birth_date = models.DateField(null=True, blank=True)
	gender = models.CharField('gender', max_length=1, choices=GENDER_CHOICES)


