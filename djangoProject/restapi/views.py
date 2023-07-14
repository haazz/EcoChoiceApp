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


from restapi.models import User, Company
from restapi.serializers import CompanySerializer

from .serializers import UserSerailizer
import json

class CompanyViewSet(viewsets.ModelViewSet):
    queryset = Company.objects.all()
    serializer_class = CompanySerializer


def search(request, keyword):
    if request.method == 'GET':
        keyword
class SearchList(generics.ListAPIView):
    serializer_class = CompanySerializer
    def get_queryset(self):
        data = json.loads(self.request.data)
        keyword = data
        print("search 리퀘스트 로그" + str(keyword))
        return Company.objects.filter(company_name__contains=keyword)


    # if request.method == 'POST':
    #
    #     data = json.loads(request.body)
    #     keyword = data.get('keyword')
    #     company_list =
    #     if company_list is not None:
    #         return company_list

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

        result = authenticate(username=email, password=pw)

        if result:
            print("로그인 성공!")
            return JsonResponse({'code': '0000', 'msg': '로그인성공입니다.'}, status=200)
        else:
            print("실패")
            return JsonResponse({'code': '0001', 'msg': '로그인실패입니다.'}, status=200)
