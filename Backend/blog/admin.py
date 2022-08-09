from django.contrib import admin

# Register your models here.
from  .models import ShopeDetails

@admin.register(ShopeDetails)
class ShopDetailsAdmin(admin.ModelAdmin):
    list_display =  ("city_name","shop_name", "location")
