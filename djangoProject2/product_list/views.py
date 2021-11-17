from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def list(request):
    return render(request, 'product_list/customer_view.html')