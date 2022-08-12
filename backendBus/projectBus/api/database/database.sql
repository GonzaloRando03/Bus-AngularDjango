/* fichero donde se encuentran los comandos que usé para crear la base de datos */


create database bus;

use bus;

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

insert into api_parada (nombre, bus) 
values 
('Cº Atlántida', 'L-1'), 
('Cº Santo Domingo', 'L-1'), 
('Cº Reyes católicos', 'L-1'), 
('Cº Adolfo Suárez', 'L-1'), 
('Cº Ramón y Cajal', 'L-1'), 
('Cº Cantely', 'L-1'), 
('Cº Miguel de Cervantes', 'L-2'), 
('Cº Federico García Lorca', 'L-2'), 
('Cº Antonio Machado', 'L-2'), 
('Cº Miguel Hernández', 'L-2'), 
('Cº Juan Ramón Jiménez', 'L-2'), 
('Cº Lope de Vega', 'L-2'), 
('Cº Francisco de Goya', 'L-2'), 
('Cº Diego Velázquez', 'L-2'), 
('Cº Picasso', 'L-3'), 
('Cº Pau Casals', 'L-3'), 
('Cº Cristóbal Colón', 'L-3'), 
('Cº Hernán Cortés ', 'L-3'), 
('Cº Alexander Fleming ', 'L-3'), 
('Cº Severo Ochoa', 'L-3'), 
('Cº Isaac Peral', 'L-3'), 
('Cº Juan Carlos I', 'L-3');  


insert into api_horarios (nombreParada, diaEspecial, hora)
values
('Cº Atlántida', 0, '9:00'), 
('Cº Santo Domingo', 0, '9:10'), 
('Cº Reyes católicos', 0, '9:20'), 
('Cº Adolfo Suárez', 0, '9:30'), 
('Cº Ramón y Cajal', 0, '9:40'), 
('Cº Cantely', 0, '9:50'), 
('Cº Miguel de Cervantes', 0, '9:00'), 
('Cº Federico García Lorca', 0, '9:05'), 
('Cº Antonio Machado', 0, '9:10'), 
('Cº Miguel Hernández', 0, '9:15'), 
('Cº Juan Ramón Jiménez', 0, '9:20'), 
('Cº Lope de Vega', 0, '9:25'), 
('Cº Francisco de Goya', 0, '9:30'), 
('Cº Diego Velázquez', 0, '9:35'), 
('Cº Picasso', 0, '9:00'), 
('Cº Pau Casals', 0, '9:10'), 
('Cº Cristóbal Colón', 0, '9:20'), 
('Cº Hernán Cortés ', 0, '9:30'), 
('Cº Alexander Fleming ', 0, '9:40'), 
('Cº Severo Ochoa', 0, '9:50'), 
('Cº Isaac Peral', 0, '10:05'), 
('Cº Juan Carlos I', 0, '10:15'),
('Cº Atlántida', 0, '10:00'), 
('Cº Santo Domingo', 0, '10:10'), 
('Cº Reyes católicos', 0, '10:20'), 
('Cº Adolfo Suárez', 0, '10:30'), 
('Cº Ramón y Cajal', 0, '10:40'), 
('Cº Cantely', 0, '10:50'), 
('Cº Miguel de Cervantes', 0, '10:00'), 
('Cº Federico García Lorca', 0, '10:05'), 
('Cº Antonio Machado', 0, '10:10'), 
('Cº Miguel Hernández', 0, '10:15'), 
('Cº Juan Ramón Jiménez', 0, '10:20'), 
('Cº Lope de Vega', 0, '10:25'), 
('Cº Francisco de Goya', 0, '10:30'), 
('Cº Diego Velázquez', 0, '10:35'), 
('Cº Picasso', 0, '10:00'), 
('Cº Pau Casals', 0, '10:10'), 
('Cº Cristóbal Colón', 0, '10:20'), 
('Cº Hernán Cortés ', 0, '10:30'), 
('Cº Alexander Fleming ', 0, '10:40'), 
('Cº Severo Ochoa', 0, '10:50'), 
('Cº Isaac Peral', 0, '11:05'), 
('Cº Juan Carlos I', 0, '11:15'),
('Cº Atlántida', 0, '11:00'), 
('Cº Santo Domingo', 0, '11:10'), 
('Cº Reyes católicos', 0, '11:20'), 
('Cº Adolfo Suárez', 0, '11:30'), 
('Cº Ramón y Cajal', 0, '11:40'), 
('Cº Cantely', 0, '11:50'), 
('Cº Miguel de Cervantes', 0, '11:00'), 
('Cº Federico García Lorca', 0, '11:05'), 
('Cº Antonio Machado', 0, '11:10'), 
('Cº Miguel Hernández', 0, '11:15'), 
('Cº Juan Ramón Jiménez', 0, '11:20'), 
('Cº Lope de Vega', 0, '11:25'), 
('Cº Francisco de Goya', 0, '11:30'), 
('Cº Diego Velázquez', 0, '11:35'), 
('Cº Picasso', 0, '11:00'), 
('Cº Pau Casals', 0, '11:10'), 
('Cº Cristóbal Colón', 0, '11:20'), 
('Cº Hernán Cortés ', 0, '11:30'), 
('Cº Alexander Fleming ', 0, '11:40'), 
('Cº Severo Ochoa', 0, '11:50'), 
('Cº Isaac Peral', 0, '12:05'), 
('Cº Juan Carlos I', 0, '12:15'),
('Cº Atlántida', 0, '12:00'), 
('Cº Santo Domingo', 0, '12:10'), 
('Cº Reyes católicos', 0, '12:20'), 
('Cº Adolfo Suárez', 0, '12:30'), 
('Cº Ramón y Cajal', 0, '12:40'), 
('Cº Cantely', 0, '12:50'), 
('Cº Miguel de Cervantes', 0, '12:00'), 
('Cº Federico García Lorca', 0, '12:05'), 
('Cº Antonio Machado', 0, '12:10'), 
('Cº Miguel Hernández', 0, '12:15'), 
('Cº Juan Ramón Jiménez', 0, '12:20'), 
('Cº Lope de Vega', 0, '12:25'), 
('Cº Francisco de Goya', 0, '12:30'), 
('Cº Diego Velázquez', 0, '12:35'), 
('Cº Picasso', 0, '12:00'), 
('Cº Pau Casals', 0, '12:10'), 
('Cº Cristóbal Colón', 0, '12:20'), 
('Cº Hernán Cortés ', 0, '12:30'), 
('Cº Alexander Fleming ', 0, '12:40'), 
('Cº Severo Ochoa', 0, '12:50'), 
('Cº Isaac Peral', 0, '13:05'), 
('Cº Juan Carlos I', 0, '13:15'),
('Cº Atlántida', 0, '13:00'), 
('Cº Santo Domingo', 0, '13:10'), 
('Cº Reyes católicos', 0, '13:20'), 
('Cº Adolfo Suárez', 0, '13:30'), 
('Cº Ramón y Cajal', 0, '13:40'), 
('Cº Cantely', 0, '13:50'), 
('Cº Miguel de Cervantes', 0, '13:00'), 
('Cº Federico García Lorca', 0, '13:05'), 
('Cº Antonio Machado', 0, '13:10'), 
('Cº Miguel Hernández', 0, '13:15'), 
('Cº Juan Ramón Jiménez', 0, '13:20'), 
('Cº Lope de Vega', 0, '13:25'), 
('Cº Francisco de Goya', 0, '13:30'), 
('Cº Diego Velázquez', 0, '13:35'), 
('Cº Picasso', 0, '13:00'), 
('Cº Pau Casals', 0, '13:10'), 
('Cº Cristóbal Colón', 0, '13:20'), 
('Cº Hernán Cortés ', 0, '13:30'), 
('Cº Alexander Fleming ', 0, '13:40'), 
('Cº Severo Ochoa', 0, '13:50'), 
('Cº Isaac Peral', 0, '14:05'), 
('Cº Juan Carlos I', 0, '14:15'),
('Cº Atlántida', 0, '17:00'), 
('Cº Santo Domingo', 0, '17:10'), 
('Cº Reyes católicos', 0, '17:20'), 
('Cº Adolfo Suárez', 0, '17:30'), 
('Cº Ramón y Cajal', 0, '17:40'), 
('Cº Cantely', 0, '17:50'), 
('Cº Miguel de Cervantes', 0, '17:00'), 
('Cº Federico García Lorca', 0, '17:05'), 
('Cº Antonio Machado', 0, '17:10'), 
('Cº Miguel Hernández', 0, '17:15'), 
('Cº Juan Ramón Jiménez', 0, '17:20'), 
('Cº Lope de Vega', 0, '17:25'), 
('Cº Francisco de Goya', 0, '17:30'), 
('Cº Diego Velázquez', 0, '17:35'), 
('Cº Picasso', 0, '17:00'), 
('Cº Pau Casals', 0, '17:10'), 
('Cº Cristóbal Colón', 0, '17:20'), 
('Cº Hernán Cortés ', 0, '17:30'), 
('Cº Alexander Fleming ', 0, '17:40'), 
('Cº Severo Ochoa', 0, '17:50'), 
('Cº Isaac Peral', 0, '18:05'), 
('Cº Juan Carlos I', 0, '18:15'),
('Cº Atlántida', 0, '18:00'), 
('Cº Santo Domingo', 0, '18:10'), 
('Cº Reyes católicos', 0, '18:20'), 
('Cº Adolfo Suárez', 0, '18:30'), 
('Cº Ramón y Cajal', 0, '18:40'), 
('Cº Cantely', 0, '18:50'), 
('Cº Miguel de Cervantes', 0, '18:00'), 
('Cº Federico García Lorca', 0, '18:05'), 
('Cº Antonio Machado', 0, '18:10'), 
('Cº Miguel Hernández', 0, '18:15'), 
('Cº Juan Ramón Jiménez', 0, '18:20'), 
('Cº Lope de Vega', 0, '18:25'), 
('Cº Francisco de Goya', 0, '18:30'), 
('Cº Diego Velázquez', 0, '18:35'), 
('Cº Picasso', 0, '18:00'), 
('Cº Pau Casals', 0, '18:10'), 
('Cº Cristóbal Colón', 0, '18:20'), 
('Cº Hernán Cortés ', 0, '18:30'), 
('Cº Alexander Fleming ', 0, '18:40'), 
('Cº Severo Ochoa', 0, '18:50'), 
('Cº Isaac Peral', 0, '19:05'), 
('Cº Juan Carlos I', 0, '19:15'),
('Cº Atlántida', 0, '19:00'), 
('Cº Santo Domingo', 0, '19:10'), 
('Cº Reyes católicos', 0, '19:20'), 
('Cº Adolfo Suárez', 0, '19:30'), 
('Cº Ramón y Cajal', 0, '19:40'), 
('Cº Cantely', 0, '19:50'), 
('Cº Miguel de Cervantes', 0, '19:00'), 
('Cº Federico García Lorca', 0, '19:05'), 
('Cº Antonio Machado', 0, '19:10'), 
('Cº Miguel Hernández', 0, '19:15'), 
('Cº Juan Ramón Jiménez', 0, '19:20'), 
('Cº Lope de Vega', 0, '19:25'), 
('Cº Francisco de Goya', 0, '19:30'), 
('Cº Diego Velázquez', 0, '19:35'), 
('Cº Picasso', 0, '19:00'), 
('Cº Pau Casals', 0, '19:10'), 
('Cº Cristóbal Colón', 0, '19:20'), 
('Cº Hernán Cortés ', 0, '19:30'), 
('Cº Alexander Fleming ', 0, '19:40'), 
('Cº Severo Ochoa', 0, '19:50'), 
('Cº Isaac Peral', 0, '20:05'), 
('Cº Juan Carlos I', 0, '20:15'),
('Cº Atlántida', 1, '10:00'), 
('Cº Santo Domingo', 1, '10:10'), 
('Cº Reyes católicos', 1, '10:20'), 
('Cº Adolfo Suárez', 1, '10:30'), 
('Cº Ramón y Cajal', 1, '10:40'), 
('Cº Cantely', 1, '10:50'), 
('Cº Miguel de Cervantes', 1, '10:00'), 
('Cº Federico García Lorca', 1, '10:05'), 
('Cº Antonio Machado', 1, '10:10'), 
('Cº Miguel Hernández', 1, '10:15'), 
('Cº Juan Ramón Jiménez', 1, '10:20'), 
('Cº Lope de Vega', 1, '10:25'), 
('Cº Francisco de Goya', 1, '10:30'), 
('Cº Diego Velázquez', 1, '10:35'), 
('Cº Picasso', 1, '10:00'), 
('Cº Pau Casals', 1, '10:10'), 
('Cº Cristóbal Colón', 1, '10:20'), 
('Cº Hernán Cortés ', 1, '10:30'), 
('Cº Alexander Fleming ', 1, '10:40'), 
('Cº Severo Ochoa', 1, '10:50'), 
('Cº Isaac Peral', 1, '11:05'), 
('Cº Juan Carlos I', 1, '11:15'),
('Cº Atlántida', 1, '12:00'), 
('Cº Santo Domingo', 1, '12:10'), 
('Cº Reyes católicos', 1, '12:20'), 
('Cº Adolfo Suárez', 1, '12:30'), 
('Cº Ramón y Cajal', 1, '12:40'), 
('Cº Cantely', 1, '12:50'), 
('Cº Miguel de Cervantes', 1, '12:00'), 
('Cº Federico García Lorca', 1, '12:05'), 
('Cº Antonio Machado', 1, '12:10'), 
('Cº Miguel Hernández', 1, '12:15'), 
('Cº Juan Ramón Jiménez', 1, '12:20'), 
('Cº Lope de Vega', 1, '12:25'), 
('Cº Francisco de Goya', 1, '12:30'), 
('Cº Diego Velázquez', 1, '12:35'), 
('Cº Picasso', 1, '12:00'), 
('Cº Pau Casals', 1, '12:10'), 
('Cº Cristóbal Colón', 1, '12:20'), 
('Cº Hernán Cortés ', 1, '12:30'), 
('Cº Alexander Fleming ', 1, '12:40'), 
('Cº Severo Ochoa', 1, '12:50'), 
('Cº Isaac Peral', 1, '13:05'), 
('Cº Juan Carlos I', 1, '13:15'),
('Cº Atlántida', 1, '17:00'), 
('Cº Santo Domingo', 1, '17:10'), 
('Cº Reyes católicos', 1, '17:20'), 
('Cº Adolfo Suárez', 1, '17:30'), 
('Cº Ramón y Cajal', 1, '17:40'), 
('Cº Cantely', 1, '17:50'), 
('Cº Miguel de Cervantes', 1, '17:00'), 
('Cº Federico García Lorca', 1, '17:05'), 
('Cº Antonio Machado', 1, '17:10'), 
('Cº Miguel Hernández', 1, '17:15'), 
('Cº Juan Ramón Jiménez', 1, '17:20'), 
('Cº Lope de Vega', 1, '17:25'), 
('Cº Francisco de Goya', 1, '17:30'), 
('Cº Diego Velázquez', 1, '17:35'), 
('Cº Picasso', 1, '17:00'), 
('Cº Pau Casals', 1, '17:10'), 
('Cº Cristóbal Colón', 1, '17:20'), 
('Cº Hernán Cortés ', 1, '17:30'), 
('Cº Alexander Fleming ', 1, '17:40'), 
('Cº Severo Ochoa', 1, '17:50'), 
('Cº Isaac Peral', 1, '18:05'), 
('Cº Juan Carlos I', 1, '18:15'),
('Cº Atlántida', 1, '19:00'), 
('Cº Santo Domingo', 1, '19:10'), 
('Cº Reyes católicos', 1, '19:20'), 
('Cº Adolfo Suárez', 1, '19:30'), 
('Cº Ramón y Cajal', 1, '19:40'), 
('Cº Cantely', 1, '19:50'), 
('Cº Miguel de Cervantes', 1, '19:00'), 
('Cº Federico García Lorca', 1, '19:05'), 
('Cº Antonio Machado', 1, '19:10'), 
('Cº Miguel Hernández', 1, '19:15'), 
('Cº Juan Ramón Jiménez', 1, '19:20'), 
('Cº Lope de Vega', 1, '19:25'), 
('Cº Francisco de Goya', 1, '19:30'), 
('Cº Diego Velázquez', 1, '19:35'), 
('Cº Picasso', 1, '19:00'), 
('Cº Pau Casals', 1, '19:10'), 
('Cº Cristóbal Colón', 1, '19:20'), 
('Cº Hernán Cortés ', 1, '19:30'), 
('Cº Alexander Fleming ', 1, '19:40'), 
('Cº Severo Ochoa', 1, '19:50'), 
('Cº Isaac Peral', 1, '20:05'), 
('Cº Juan Carlos I', 1, '20:15');




select p.bus, p.nombre, h.hora, h.diaEspecial
    from api_parada p
    inner join api_horarios h on p.nombre = h.nombreParada
    order by p.nombre desc;


select p.bus, p.nombre, h.hora, h.diaEspecial
    from api_horarios h, api_parada p
    where p.nombre = h.nombreParada and p.bus = 'L-2';