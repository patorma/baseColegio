select (col.nombre)as colegio,(p.nombre)as profesor,(p.activo)as activo from COLEGIO col inner join PROFESOR p on(col.id = p.id_colegio) where col.id= 1 order by (p.nombre) asc


SELECT (al.nombre)AS alumno, (asig.nombre)AS asignatura, (n.nota)AS nota FROM COLEGIO col INNER JOIN ALUMNO al ON(col.id = al.id_colegio) INNER JOIN  NOTA n ON(al.id =n.id_alumno) INNER JOIN ASIGNATURA asig ON(n.id_asignatura = asig.id) WHERE col.id = 1 and asig.id = 1 and n.nota < 4.0 

SELECT (al.nombre)AS alumno, (asig.nombre)AS asignatura, (n.nota)AS nota FROM COLEGIO col INNER JOIN ALUMNO al ON(col.id = al.id_colegio) INNER JOIN  NOTA n ON(al.id =n.id_alumno) INNER JOIN ASIGNATURA asig ON(n.id_asignatura = asig.id) WHERE col.id = 1 and asig.id = 1 and n.nota = (select MAX(n.nota) from COLEGIO col INNER JOIN ALUMNO al ON(col.id = al.id_colegio) INNER JOIN  NOTA n ON(al.id =n.id_alumno))
