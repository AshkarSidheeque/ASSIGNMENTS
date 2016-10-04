from django.contrib.auth import authenticate
user = authenticate(username='ashycodes@gmail.com', password='ash123sid')
if user is not None:
    # A backend authenticated the credentials
else:
    # No backend authenticated the credentials
