from django.contrib.staticfiles.templatetags.staticfiles import static
from django.http import HttpResponse
from django.template import loader
from django.template import Template
from django.shortcuts import render,redirect
from django.http import JsonResponse
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from login.models import Profile
from django.shortcuts import render_to_response
from django.template import RequestContext
from models import *
from django.core.files.storage import FileSystemStorage
from django.views.decorators.csrf import csrf_exempt
from login.forms import ProfileForm
from django.conf import settings

from django.contrib import messages 
@csrf_exempt
def registration(request):
	SITE_URL = settings.SITE_URL
	#print request.POST
	userObj = User()
	userObj.first_name = request.POST.get('firstname', '')
	userObj.last_name = request.POST.get('lastname', '')
	userObj.username = request.POST.get('youremail', '')
	userObj.email = request.POST.get('youremail', '')
	userObj.set_password(request.POST.get("password"))
	month = request.POST.get('month', '')
	day = request.POST.get('day', '')
	year = request.POST.get('year', '')
	sex = request.POST.get('gender', '')
	userPro = Profile()
	userPro.user = userObj

	#print request.FILES.photo
	#userPro.photo = pro.name
	
	#pro = request.FILES('photo')
	if not request.FILES:
		print "no files"
	else:
		print "files"


	#user = authenticate(username=userObj.email, password=userpass)
	userObj.save()
	user_id = userObj.id
	print user_id	
	if request.method == 'POST':
		#data = {'photo': pro,'gender': sex,user_id:user_id}
		form = ProfileForm(request.POST, request.FILES)
		if form.is_valid():
			final_profile = form.save(commit=False)
			final_profile.user_id = user_id  # The logged-in user
			final_profile.photo = SITE_URL+'/static/media/' + request.FILES['photo'].name
			final_profile.save()
			
		else:
			print(form.errors)
			print form.data

	"""
	userPro.save()"""
	context={'user_inserted':"true"};
	return render_to_response("registration.html",context,RequestContext(request))

