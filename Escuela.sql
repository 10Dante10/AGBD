INSERT INTO Division (Division_año, curso)
VALUES ("5","D"),("5","B");

INSERT INTO Profesor(Apellido, Nombre)
VALUES ("andres","Navarro"),
       ("Tomas","Mayorga"),
       ("Alejandro","Salomon"),
       ("Federico","Villace"),
       ("Enrico","Rovaletti"),
       ("Nahuel","Aruni"),
       ("Maximiliano","Urso"),
       ("Eduardo","Mestrovich"),
       ("Jose","Albornoz")

INSERT INTO Materia ("materia_nombre", "materia_año")
VALUES ("Diseño Multimedial", "5"),
       ("Diseño Software","5"),
       ("Programacion Web","5"),
       ("Administracion y Gestin de Base de Datos","5"),
       ("Dispositivos Electronicos programables","5"),
       ("Redes de datos","5")



INSERT INTO Asignacion (profesor_id, materia_id,Division_id)
VALUES  ((SELECT profesor_id FROM Profesor WHERE Apellido like "Navarro"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Administracion y Gestin de Base de Datos"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Mayorga"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Administracion y Gestin de Base de Datos"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Villace"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Programacion Web"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Mayorga"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Programacion Web"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Navarro"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Software"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Mayorga"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Software"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Urso"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Dispositivos Electronicos programables"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Mestrovich"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Dispositivos Electronicos programables"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Rovaletti"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Multimedial"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Aruni"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Multimedial"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Albornoz"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Redes de datos"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Salomon"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Redes de datos"),(SELECT Division_id FROM Division WHERE curso like "D" AND Division_año like "5")),
        
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Navarro"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Administracion y Gestin de Base de Datos"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Mayorga"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Administracion y Gestin de Base de Datos"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Villace"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Programacion Web"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Mayorga"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Programacion Web"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
        ((SELECT profesor_id FROM Profesor WHERE Apellido like "Navarro"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Software"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Mayorga"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Software"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Urso"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Dispositivos Electronicos programables"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Mestrovich"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Dispositivos Electronicos programables"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Rovaletti"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Multimedial"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Aruni"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Diseño Multimedial"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Albornoz"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Redes de datos"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5")),
		((SELECT profesor_id FROM Profesor WHERE Apellido like "Salomon"),(SELECT materia_id FROM Materia WHERE materia_nombre like "Redes de datos"),(SELECT Division_id FROM Division WHERE curso like "B" AND Division_año like "5"));



UPDATE asignacion SET profesor_id = 11
WHERE materia_id = (SELECT materia_id FROM materias WHERE nombre LIKE "Administracion y gestion de base de datos") AND profesor_id = (SELECT profesor_id FROM profesores WHERE apellido like "Navarro")


UPDATE asignacion SET profesor_id = 10
WHERE (SELECT curso FROM division WHERE curso like "B") AND (SELECT apellido FROM profesores WHERE apellido like "Albornoz")