from django.http import JsonResponse
from django.shortcuts import render
from django.contrib.auth import authenticate
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
# Create your views here.

from rest_framework import  viewsets
from rest_framework.parsers import JSONParser
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from rest_framework import generics
from rest_framework_api_key.permissions import HasAPIKey


from restapi.models import User, Company, Quiz
from restapi.serializers import CompanySerializer, QuizSerializer

from .serializers import UserSerailizer
import json

class CompanyViewSet(viewsets.ModelViewSet):
    queryset = Company.objects.all()
    serializer_class = CompanySerializer

class QuizViewSet(viewsets.ModelViewSet):
    queryset = Quiz.objects.all()
    serializer_class = QuizSerializer


@method_decorator(csrf_exempt, name='dispatch')
def app_signup(request):
    if request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = UserSerailizer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse({'code': '0000'})
        return JsonResponse({'code': '0001'})

@method_decorator(csrf_exempt, name='dispatch')
def app_login(request):
    if request.method == 'POST':
        print("login 리퀘스트 로그" + str(request.body))
        data = json.loads(request.body)
        email = data.get('useremail')
        pw = data.get('userpw')

        print("email = " + email + " pw = " + pw)

        userdata = User.objects.filter(useremail=email)
        if userdata.filter(userpw=pw).exists()
            print("로그인 성공!")
            return JsonResponse({'code': '0000'}, status=200)
        else:
            print("실패")
            return JsonResponse({'code': '0001'}, status=200)
