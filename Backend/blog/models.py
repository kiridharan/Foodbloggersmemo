from django.db import models

# Create your models here.
class ShopeDetails(models.Model):
    city_name = models.CharField(max_length=100)
    shop_name = models.CharField(max_length=100)
    location = models.CharField(max_length=100)
    dishes = models.CharField(max_length=300)
    fav_dish = models.CharField(max_length=30)
    rating = models.IntegerField(choices=[(i, i) for i in range(0, 6)] , null=True , blank=True)
    visited = models.BooleanField()

    def __str__(self):
        return '{} {} {} {} {} {} {}'.format(self.city_name , self.shop_name , self.location ,
        self.dishes, self.fav_dish , self.rating , self.visited)
