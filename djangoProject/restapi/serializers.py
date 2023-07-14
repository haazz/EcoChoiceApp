from rest_framework import serializers
from restapi.models import User, Company, Quiz

class UserSerailizer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('useremail', 'userpw', 'username')

class CompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = Company
        fields = '__all__' 

class QuizSerializer(serializers.ModelSerializer):
    class Meta:
        model = Quiz
        fields = '__all__'