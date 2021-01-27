from django import forms
from django.forms.fields import *

class subscribe(forms.Form):
    Email = forms.EmailField()
    # FName = forms.CharField()
    # e_mail = forms.CharField()

    def __str__(self):
        return self.Email
        # return self.r_mail
    # def __str__(self):
    #     return self.FName

class email_mob(forms.Form):
    email = forms.EmailField()

    def __str__(self):
        return self.email


# class home_view(forms.Form):
#     Email = forms.EmailField()

#     def __str__(self):
#         return self.Email

# class email_webdevelop(forms.Form):
#     Email = forms.EmailField()

#     def __str__(self):
#         return self.Email