from django.db import models

# Create your models here.
Version:1.0
StartHTML:0000000107
EndHTML:0000009211
StartFragment:0000000556
EndFragment:0000009175

class ProductInfo(models.Model):

    item_number = models.IntegerField(blank=True, null=True)

    item_name = models.CharField(max_length=255, blank=True, null=True)

    unit_of_measurement = models.CharField(max_length=255, blank=True, null=True)

    unit_price = models.FloatField(blank=True, null=True)

    department = models.CharField(max_length=255, blank=True, null=True)

    store = models.ForeignKey('StoreInfo', models.DO_NOTHING, blank=True, null=True)

    total_in_inventory = models.IntegerField(blank=True, null=True)

    class Meta:

        managed = False

        db_table = 'product_info'

class StoreInfo(models.Model):

    store_id = models.CharField(primary_key=True, max_length=255)

    street_address = models.CharField(max_length=255, blank=True, null=True)

    city = models.CharField(max_length=255, blank=True, null=True)

    state = models.CharField(max_length=255, blank=True, null=True)

    zip = models.IntegerField(blank=True, null=True)

    class Meta:

        managed = False

        db_table = 'store_info'

p, li { white-space: pre-wrap; }
