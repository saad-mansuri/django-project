from django.db import models
from django.db.models.fields import DateTimeField
# from django.db.models.expressions import Window
# from django import forms

# Create your models here.
class WebUserData(models.Model):
    uname = models.CharField(max_length=150)   
    email = models.EmailField(max_length=150, unique=True)
    phone =  models.CharField(max_length=12)
    wpnumber =  models.CharField(max_length=12)
    budget = models.CharField(max_length=150)
    description = models.CharField(max_length=250)
    applications = models.CharField(max_length=150)
    create_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.uname
        
        
class MobUserData(models.Model):
    uname = models.CharField(max_length=150)   
    email = models.EmailField(max_length=150)
    phone =  models.CharField(max_length=12)
    wpnumber =  models.CharField(max_length=12)
    budget = models.CharField(max_length=150)
    description = models.CharField(max_length=250)
    applications = models.CharField(max_length=150)
    create_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.uname

class iosUserData(models.Model):
    uname = models.CharField(max_length=150)   
    email = models.EmailField(max_length=150, unique=True)
    phone =  models.CharField(max_length=12)
    wpnumber =  models.CharField(max_length=12)
    budget = models.CharField(max_length=150)
    description = models.CharField(max_length=250)
    applications = models.CharField(max_length=150)
    create_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.uname

class winUserData(models.Model):
    uname = models.CharField(max_length=150)   
    email = models.EmailField(max_length=150, unique=True)
    phone =  models.CharField(max_length=12)
    wpnumber =  models.CharField(max_length=12)
    budget = models.CharField(max_length=150)
    description = models.CharField(max_length=250)
    applications = models.CharField(max_length=150)
    create_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.uname


class ContactUserData(models.Model):
    uname = models.CharField(max_length=150)   
    email = models.EmailField(max_length=150)
    phone =  models.CharField(max_length=12)
    wpnumber =  models.CharField(max_length=12)
    budget = models.CharField(max_length=150)
    description = models.CharField(max_length=250)
    create_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.uname
