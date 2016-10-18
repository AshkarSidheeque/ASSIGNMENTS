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
from django.core.mail import send_mail
from django.contrib import messages 
from django.template import Context
from django.template.loader import get_template
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
	
	#user = authenticate(username=userObj.email, password=userpass)
	userObj.is_active = False
	userObj.save()
	user_id = userObj.id
	user_name = userObj.first_name
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

	template = get_template('confirm.html')
	context = Context({'user_id': user_id,'user_name': user_name })
	content = template.render(context)
	email_body = "Hello, %s,thanks for signing up for a Facebook account!\n\nTo activate your account click below link \n\n http://127.0.0.1:9000/activate/?user_id=%s" % (user_name,
                user_id)
	send_mail(
    'Subject here',
    email_body,
    'ashkarsidheeque@gmail.com',
    [userObj.email],
    fail_silently=False,
)
	context={'user_inserted':"true"};
	return render_to_response("registration.html",context,RequestContext(request))

def activation(request):
	new_id = request.GET['user_id']
	print new_id
	user = User.objects.get(id=new_id)
	user.is_active = True
	user.save()
	context={'user_activated':"true"};
	return render_to_response("activated.html",context,RequestContext(request))



