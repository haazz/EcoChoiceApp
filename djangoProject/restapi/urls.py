from django.urls import path, include

app_name = 'restapi'
urlpatterns = [
    path('', include('rest_framework.urls', namespace='rest_framework_category')),
]