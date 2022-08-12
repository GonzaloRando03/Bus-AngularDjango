from django.urls import path
from api.views import ParadaView
from api.views import ViajeView

urlpatterns = [
    path('paradas/', ParadaView.as_view(), name='paradasList'),
    path('viajes/', ViajeView.as_view(), name='viajesList'),
    path('viajes/<id>', ViajeView.as_view(), name='viajesList'),
]