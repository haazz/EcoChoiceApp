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
from rest_framework.decorators import permission_classes
from rest_framework_api_key.models import APIKey

from restapi.models import User, Company, Quiz, Product
from restapi.serializers import CompanySerializer, QuizSerializer, ProductSerializer

from .serializers import UserSerailizer
import json

@permission_classes([HasAPIKey])
class CompanyViewSet(viewsets.ModelViewSet):
    queryset = Company.objects.all()
    serializer_class = CompanySerializer

@permission_classes([HasAPIKey])
class QuizViewSet(viewsets.ModelViewSet):
    queryset = Quiz.objects.all()
    serializer_class = QuizSerializer

@permission_classes([HasAPIKey])
class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

@permission_classes([HasAPIKey])
@method_decorator(csrf_exempt, name='dispatch')
def mileage(request):
    if request.method == 'GET':
        apikey = request.META.get('Authorization')
        apikey_split = apikey.split(' ')
        keys = APIKey.objects.get(prefix=apikey_split[1][0:8])
        print(keys)

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

        try:
            userdata = User.objects.get(useremail=email, userpw=pw)
            print("로그인 성공!")
            username = User.objects.filter(useremail=email).get('username')
            print(username)
            return JsonResponse({'code': '0000', 'username': username}, status=200)
        except:
            print("실패")
            return JsonResponse({'code': '0001'}, status=200)
