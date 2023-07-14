from rest_framework import serializers
from restapi.models import Test, User, Company

class UserSerailizer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('useremail', 'userpw', 'username')

class CompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = Company
        fields = '__all__' 
