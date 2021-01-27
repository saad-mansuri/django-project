from django.urls import path
# from django.urls.conf import include
from . import views

urlpatterns = [
    path('', views.codex_home, name="codex_home"),
    path('services', views.services, name="services"),
    path('about',views.about,name="about"),
    path('contact',views.contact,name="contact"),
    path('webdevelop',views.webdevelop,name="webdevelop"),
    path('mobileapp',views.mobileapp,name="mobileapp"),
    path('iosapp',views.iosapp,name="iosapp"),
    path('windowapp',views.windowapp,name="windowapp"),
    path('success',views.success,name="success"),

    path('login', views.login, name="login"),
    path('registration', views.registration, name="registration"),

    # data submit 
    path('datasubmit_from_webdevelop', views.datasubmit_from_webdevelop, name='datasubmit_from_webdevelop'),
    path('datasubmit_from_mobdevelop', views.datasubmit_from_mobdevelop, name='datasubmit_from_mobdevelop'),
    path('datasubmit_from_iosdevelop', views.datasubmit_from_iosdevelop, name='datasubmit_from_iosdevelop'),
    path('datasubmit_from_windevelop', views.datasubmit_from_windevelop, name='datasubmit_from_windevelop'),
    path('datasubmit_from_contactdevelop', views.datasubmit_from_contactdevelop, name='datasubmit_from_contactdevelop'),
    
    path('subscribe', views.subscribe, name="subscribe" ),
    # path('home_view', views.home_view, name="home_view"),


    
]