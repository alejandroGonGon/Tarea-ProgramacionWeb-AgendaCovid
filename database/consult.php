<?php 

$cons_usuario="root";
    $cons_contra="";
    $cons_base_datos="agenda_covid";
    $cons_equipo="localhost";
    
    $obj_conexion = mysqli_connect($cons_equipo,$cons_usuario,$cons_contra,$cons_base_datos);

    if(!$obj_conexion)
    {
        alert("No se ha podido conectar PHP - MySQL, Intetelo mas tarde.");
    }
    else
    {
     /* ejemplo de una consulta */


 ?>