from django.contrib import admin
from rest_framework_api_key.admin import APIKeyModelAdmin

# Register your models here.
from restapi.models import Company, User

admin.site.register(Company)
admin.site.register(User)