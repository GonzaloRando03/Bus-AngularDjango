# Reserva de Buses, Angular, Django y MySQL

*Nombre: Gonzalo*

*Apellidos: Rando Serna*


## Resumen
Aplicación Web donde puedes ver las distintas líneas de bus en la ciudad, consultar los horarios y paradas y reservar billetes. Frontend programado en TypeScript, usando el framework Angular y backend en Python usando Django. 

En la base de datos tenemos distintas tablas, una que guarda información de las paradas y otra que guarda información de los horarios.



## Funcionamiento
Al entrar a la página nos aparece un mapa con las distintas líneas de autobús, una caja de mensajes y otra donde aparecen tus próximos viajes.

![image](https://user-images.githubusercontent.com/103594582/197517813-65c4fddc-5c9c-4fe9-877a-dac61f1d4777.png)

### Líneas
Al entrar en una línea vemos el mapa de esa línea con las calles y los horarios por los que pasa por cada calle.

![image](https://user-images.githubusercontent.com/103594582/197518329-54a62ace-4c6d-4434-8ae1-dc137a231266.png)

![image](https://user-images.githubusercontent.com/103594582/197518455-effe0e03-2fd1-4cf7-b036-e9a4b5862c98.png)

![image](https://user-images.githubusercontent.com/103594582/197518539-b1fce5ee-1de6-4408-a556-cc97656cf41b.png)

Al pulsar en el nombre de una calle me aparece el horario de esta.

![image](https://user-images.githubusercontent.com/103594582/197518764-2c4cae2e-c047-4707-8443-658d8ed45780.png)

Si pulsamos en una hora y un día específico se nos reservará un viaje y nos aparecerá un mensaje confirmando la reserva y otro donde nos dice cuando falta para nuestro viaje.

![image](https://user-images.githubusercontent.com/103594582/197519136-622229dc-1580-40f1-bedd-5c80e83f8bc6.png)

Al pulsar en el botón de la "x" cancelamos un viaje, este se eliminará de los próximos viajes y nos aparecerá un mensaje avisandonos que hemos eliminado un viaje.

![image](https://user-images.githubusercontent.com/103594582/197520535-da224d25-9fba-4a60-b009-b939729c3902.png)
 
### Estructura de la base de datos.
<pre>
create table api_parada (
    nombre varchar(40),
    bus varchar(5),
    constraint pkparada primary key(nombre)
);

create table api_horarios (
    nombreParada varchar(40),
    diaEspecial numeric(1,0),
    hora varchar(5),
    constraint
        fkhora foreign key (nombreParada)
        references api_parada(nombre),
    constraint 
        phorario primary key (nombreParada, hora, diaEspecial)
);
</pre>

