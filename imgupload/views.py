from django.shortcuts import render
from .uploadservice.firebase import *
from django.http import HttpResponse


# Create your views here.
def upload(request):
    if request.method == 'POST':
        files = request.FILES.getlist('images')
        urls = firebase_upload(files)

        formatted_url = ','.join(urls)

    return HttpResponse(formatted_url)


def upload_debug(request):
    return render(request, 'updebug.html')
