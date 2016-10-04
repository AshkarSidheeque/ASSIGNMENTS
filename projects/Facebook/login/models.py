from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class Profile(models.Model):
    GENDER_CHOICES = (
        ('M', 'Male'),
        ('F', 'Female'),
    )
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    photo = models.ImageField(upload_to='static/media/images/photos')
    birth_date = models.DateField(null=True, blank=True)
    gender = models.CharField('gender', max_length=1, choices=GENDER_CHOICES)


