from django.core.mail import message
from django.shortcuts import redirect, render
from .models import *
from codexsite.settings import EMAIL_HOST_USER
from . import forms
from django.core.mail import send_mail
from django.http import HttpResponse
# from django.core.mail import EmailMessage


# Create your views here.

def subscribe(request):
    sub = forms.subscribe()
    if request.method == 'POST':
        sub = forms.subscribe(request.POST)
        subject = 'Welcome to codeXsite'
        message = 'Hello We are contacting you seen... Thank You email'
        recepient = str(sub['Email'].value())
        
        send_mail(subject, message, EMAIL_HOST_USER, [recepient])
        return render(request, 'success.html', {'recepient' : recepient})
    return render(request, 'email-send.html', {'form' : sub})


def codex_home(request):
    return render(request, 'index.html')

def services(request):
    return render(request, 'services_management.html')

def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact_form.html')
def datasubmit_from_contactdevelop(request):
    uname = request.POST.get('username')
    email = request.POST.get('email')
    phone = request.POST.get('phone')
    wpnumber = request.POST.get('wpnumber')
    budget = request.POST.get('budget')
    description = request.POST.get('description')
    apps = request.POST.get('apps')

    ContactUserData(uname=uname, email = email, phone=phone, wpnumber = wpnumber, budget=budget, description= description, applications = apps).save()

    subject = 'Welcome to codeXsite'
    message = f" Your Name: {uname},Your Email: {email},Your Phoneno: {phone},Budget : {budget},Whats Number : {wpnumber},Description: {description}"
    send_mail(subject, message, EMAIL_HOST_USER, [email])
    return redirect('/')


def login(request):
    return render(request, 'login.html')

def registration(request):
    return render(request, 'registration.html')

def webdevelop(request):
    return render(request, 'webdevelop-service.html')
def datasubmit_from_webdevelop(request):
    uname = request.POST.get('username')
    email = request.POST.get('email')
    phone = request.POST.get('phone')
    wpnumber = request.POST.get('wpnumber')
    budget = request.POST.get('budget')
    description = request.POST.get('description')
    apps = request.POST.get('apps')

    WebUserData(uname=uname, email = email, phone=phone, wpnumber = wpnumber, budget=budget, description= description, applications = apps).save()

    subject = 'Welcome to codeXsite'
    message = f" Your Name: {uname},Your Email: {email},Your Phoneno: {phone},Budget : {budget},Whats Number : {wpnumber},Description: {description}"
    send_mail(subject, message, EMAIL_HOST_USER, [email])
    return redirect('success')

def success(request):
    return render(request, 'success.html')

def mobileapp(request):
    return render(request, 'mobile-app-service.html')

def mobileapp(request):
    return render(request, 'mobile-app-service.html')
def datasubmit_from_mobdevelop(request):
    uname = request.POST.get('username')
    email = request.POST.get('email')
    phone = request.POST.get('phone')
    wpnumber = request.POST.get('wpnumber')
    budget = request.POST.get('budget')
    description = request.POST.get('description')
    apps = request.POST.get('apps')

    MobUserData(uname=uname, email = email, phone=phone, wpnumber = wpnumber, budget=budget, description= description, applications = apps).save()
    
    subject = 'Welcome to codeXsite'
    message = f" Your Name: {uname},Your Email: {email},Your Phoneno: {phone},Budget : {budget},Whats Number : {wpnumber},Description: {description}"
    send_mail(subject, message, EMAIL_HOST_USER, [email])
    return redirect('success')


def iosapp(request):
    return render(request, 'ios-app-service.html')
def datasubmit_from_iosdevelop(request):
    uname = request.POST.get('username')
    email = request.POST.get('email')
    phone = request.POST.get('phone')
    wpnumber = request.POST.get('wpnumber')
    budget = request.POST.get('budget')
    description = request.POST.get('description')
    apps = request.POST.get('apps')

    if request.method == 'POST':
        iosUserData(uname=uname, email = email, phone=phone, wpnumber = wpnumber, budget=budget, description= description, applications = apps).save()
    
    subject = 'Welcome to codeXsite'
    message = f" Your Name: {uname},Your Email: {email},Your Phoneno: {phone},Budget : {budget},Whats Number : {wpnumber},Description: {description}"
    send_mail(subject, message, EMAIL_HOST_USER, [email])
    return redirect('success')


def windowapp(request):
    return render(request, 'window-app-services.html')
def datasubmit_from_windevelop(request):
    uname = request.POST.get('username')
    email = request.POST.get('email')
    phone = request.POST.get('phone')
    wpnumber = request.POST.get('wpnumber')
    budget = request.POST.get('budget')
    description = request.POST.get('description')
    apps = request.POST.get('apps')

    if request.method == 'POST':
        winUserData(uname=uname, email = email, phone=phone, wpnumber = wpnumber, budget=budget, description= description, applications = apps).save()
    
    subject = 'Welcome to codeXsite'
    message = f" Your Name: {uname},Your Email: {email},Your Phoneno: {phone},Budget : {budget},Whats Number : {wpnumber},Description: {description}"
    send_mail(subject, message, EMAIL_HOST_USER, [email])
    return redirect('success')




