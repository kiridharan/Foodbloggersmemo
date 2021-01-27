from django.shortcuts import render

# Create your views here.
from blog import models
from .serializers import ShopSerializer
from rest_framework import generics

class ShopList(generics.ListCreateAPIView):
    queryset = models.ShopeDetails.objects.all()
    serializer_class = ShopSerializer

class ShopDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.ShopeDetails.objects.all()
    serializer_class = ShopSerializer