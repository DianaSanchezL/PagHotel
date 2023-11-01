<?php
    $server = "localhost";
    $user = "root";
    $pass = "Peluchi5142+";
    $db = "formulariocontacto";
    
    $conexion = new mysqli($server, $user, $pass, $db);

    if ($conexion->connect_error) {
        echo "error de conexion";
        exit();
    }/*else{
        echo"sí se conectó a la db";
    }*/
?>