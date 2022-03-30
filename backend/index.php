<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET,POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Conecta a la base de datos  con usuario, contraseña y nombre de la BD
$servidor = "localhost"; $usuario = "root"; $contrasenia = ""; $nombreBaseDatos = "appnotas";
$conexionBD = new mysqli($servidor, $usuario, $contrasenia, $nombreBaseDatos);


// Consulta datos y recepciona una clave para consultar dichos datos con dicha clave
//borrar pero se le debe de enviar una clave ( para borrado )
if (isset($_GET["borrar"])){
    $sqlNotas = mysqli_query($conexionBD,"DELETE FROM appnotas WHERE id=".$_GET["borrar"]);
    if($sqlNotas){
        echo json_encode(["success"=>1]);
        exit();
    }
    else{  echo json_encode(["success"=>0]); }
}
//Inserta un nuevo registro y recepciona en método post los datos de nombre y correo
if(isset($_GET["insertar"])){
    $data = json_decode(file_get_contents("php://input"));
    $usuario=$data->nombre;
    $parcial1=$data->parcial1;
    $parcial2=$data->parcial2;
    $parcial3=$data->parcial3;


    $sqlNotas = mysqli_query($conexionBD,"INSERT INTO notas(usuario,parcial1,parcial2,parcial3) VALUES('$usuario','$parcial1','$parcial2','$parcial3') ");
    echo json_encode(["success"=>1]);

    exit();
}
// Consulta todos los registros de la tabla empleados
$sqlNotas = mysqli_query($conexionBD,"SELECT * FROM notas");
if(mysqli_num_rows($sqlNotas) > 0){
    $Notas = mysqli_fetch_all($sqlNotas,MYSQLI_ASSOC);
    echo json_encode($Notas);
}
else{ echo json_encode([["success"=>0]]); }


?>
