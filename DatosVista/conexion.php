<?php 

function conexion(){
    $servidor = 'localhost'; //127.0.0.1 loopback
    $usuario = 'root';
    $password = '';
    $base ='vista';
    $puerto = 8888;

    $conexion = mysqli_connect(
        $servidor,
        $usuario,
        $password,
        $base,
        $puerto
    );
    return $conexion;
}

?>