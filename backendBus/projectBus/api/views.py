from email import message
import json
from tokenize import Number
from django.views import View
from django.http.response import JsonResponse
from datetime import datetime
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from api.database.database import run_query

msg = ['Bienvenido a BusMsg!'] #memoria para mensajes
viaje = []  #memoria para los viajes 

# Create your views here.
class ParadaView(View): #vista para las paradas

    @method_decorator(csrf_exempt)  #funcion para quitar el csrf
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def get(self, request):    #funcion para el metodo get que devuelve las paradas de la base de datos.
        paradas = run_query('''select p.bus, p.nombre, h.hora, h.diaEspecial
                                from api_horarios h, api_parada p
                                where p.nombre = h.nombreParada;''')
        
        if len(paradas) > 0:
            data = {'message': "Success", 'paradas': paradas, 'msg': msg}
        else:
            data = {'message': "Paradas not found..."}
        return JsonResponse(data)



    def post(self, request): #funcion para el metodo post que guarda un mensaje en la memoria
        jsonData = json.loads(request.body)
        msg.append(jsonData['msg'])
        if len(msg) > 10:
            msg.pop(0)
        data = {'message': "Success", 'data': msg}
        print(data)
        return JsonResponse(data)


    def delete(self, request): #funcion para el metodo delete que borra la memoria de mensajes
        msg.clear()
        data = {'message': "Deleted"}
        return JsonResponse(data)





class ViajeView(View): #vista para los viajes

    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)



    def get(self, request):
        if len(viaje) > 0:
            data = {'message': "Success", 'viajes': viaje}
        else:
            data = {'message': "Viajes not found..."}
        return JsonResponse(data)



    def post(self, request):
        jsonData = json.loads(request.body)
        nDay = datetime.today().isoweekday()

        if jsonData['dia'] == nDay:
            cabecera = jsonData['linea']+'('+jsonData['parada']+')'
            cuerpo = 'Hoy tienes un viaje a las '+jsonData['hora']
            
        elif jsonData['dia'] < nDay:
            dia = 7-(nDay-jsonData['dia'])
            cabecera = jsonData['linea']+'('+jsonData['parada']+')'
            cuerpo = 'Faltan '+str(dia)+' días para tu viaje a las '+jsonData['hora']
        
        elif jsonData['dia'] > nDay:
            dia = jsonData['dia'] + 1 - nDay -1
            cabecera = jsonData['linea']+'('+jsonData['parada']+')'
            cuerpo = 'Faltan '+str(dia)+' días para tu viaje a las '+jsonData['hora']
        else:
            pass
        
        message = {
                'cabecera': cabecera,
                'cuerpo': cuerpo
        }
        print(viaje)
        viaje.append(message)
        if len(viaje) > 6:
            viaje.pop(0)
        data = {'message': "Success", 'data': viaje}
        return JsonResponse(data)


    def delete(self, request, id):
        viaje.pop(int(id))
        msg.append('Viaje eliminado con éxito')
        if len(msg) > 12:
            msg.pop(0)
        data = {'message': "Deleted"}
        return JsonResponse(data)