from django.contrib import admin
from rest_framework_api_key.admin import APIKeyModelAdmin

# Register your models here.
from restapi.models import Test, User

admin.site.register(Test)
admin.site.register(User)