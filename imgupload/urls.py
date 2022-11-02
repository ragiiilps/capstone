from django.urls import path
from .views import *

urlpatterns = [
    path('upload', upload, name='upload'),
    path('updebug', upload_debug, name='updebug'),
]