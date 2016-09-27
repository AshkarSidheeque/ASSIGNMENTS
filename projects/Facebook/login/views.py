from django.http import HttpResponse
from django.template import loader
from django.template import Template
from django.shortcuts import render

def index(request):
    template = loader.get_template('index.html')
    context={}
    return HttpResponse(template.render(context, request))

def profile(request):
    template = loader.get_template('profile.html')
    context={}
    return HttpResponse(template.render(context, request))

def email(request):
    template = loader.get_template('email.html')
    context={}
    return HttpResponse(template.render(context, request))

def login2(request):
    template = loader.get_template('login2.html')
    context={}
    return HttpResponse(template.render(context, request))