import MySQLdb

from api.models import Parada

DATABASES = {
    'HOST': 'localhost',
    'PORT': '3306',
    'USER': 'root',
    'PASSWORD': 'root',
    'NAME': 'bus',
    }


def run_query(query=''): 
    datos = [DATABASES['HOST'], DATABASES['USER'], DATABASES['PASSWORD'], DATABASES['NAME']] 
    
    conn = MySQLdb.connect(*datos) 
    cursor = conn.cursor()         # Crear un cursor 
    cursor.execute(query)          # Ejecutar una consulta 

    if query.upper().startswith('SELECT'): 
        result = cursor.fetchall()   # Traer los resultados de un select 
    else: 
        conn.commit()              # Hacer efectiva la escritura de datos 
        result = None 
    
    cursor.close()                 # Cerrar el cursor 
    conn.close()                   # Cerrar la conexión 

    data = []

    for a in result:
        value = Parada(a[0], a[1], a[2], a[3])
        data.append(value.__dict__) #dict nos da la version en diccionario de los datos del objeto
        
    return data 