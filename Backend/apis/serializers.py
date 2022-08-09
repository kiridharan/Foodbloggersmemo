from rest_framework import serializers
from  rest_framework import generics
from blog import models

class ShopSerializer(serializers.ModelSerializer):
    class Meta:
        fields = (
            'city_name',
            'shop_name',
            'location',
            'dishes',
            'fav_dish',
            'rating',
            'visited',

        )
        model=models.ShopeDetails