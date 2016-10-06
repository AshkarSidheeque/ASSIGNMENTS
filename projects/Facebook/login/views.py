from django.http import HttpResponse
from django.template import loader
from django.template import Template
from django.shortcuts import render
from django.http import JsonResponse
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from login.models import Profile

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

def webservice(request):

    username = request.GET.get('username', '') 
    password = request.GET.get('password','')
    user = authenticate(username=username, password=password)

    if user is not None:
        user_profile = Profile.objects.get(id=user.id)
        pro_pic = str(user_profile.photo)
        return JsonResponse({"vchr_user_name":username, "ResponseCode":200,"Msg":'Success',"vchr_first_name":user.first_name,"vchr_last_name":user.last_name,"vchr_prof_pic":pro_pic })   
   
    elif User.objects.filter(username=username).exists():
        user = User.objects.get(username=username)
        user_profile = Profile.objects.get(id=user.id)
        pro_pic = str(user_profile.photo)
        #return JsonResponse({"name":"ash"})
        #user_id = User.objects.get(username=username).pk
        #return user_id
       # user_profile = Profile.objects.get(id=user.id)
        #pro_pic = str(user_profile.photo)
        return JsonResponse({"vchr_user_name":username, "ResponseCode":500,"vchr_first_name":user.first_name,"vchr_last_name":user.last_name,"vchr_prof_pic":pro_pic })   

    else:

        return JsonResponse({"ResponseCode":404,"Msg":"Email id does not exist" })   


    