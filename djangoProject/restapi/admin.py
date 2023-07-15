from django.contrib import admin
from rest_framework_api_key.admin import APIKeyModelAdmin

# Register your models here.
from restapi.models import Company, User, Quiz, Product

admin.site.register(Company)
admin.site.register(User)
admin.site.register(Quiz)
admin.site.register(Product)