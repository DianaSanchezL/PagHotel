<?php
include '../db/conexion.php';
    if (isset($_POST["nombre"]) && isset($_POST["email"]) && isset($_POST["telefono"]) && isset($_POST["asunto"]) && isset($_POST["mensaje"])) {
        $nombre = $_POST["nombre"];
        $email = $_POST["email"];
        $telefono = $_POST["telefono"];
        $asunto = $_POST["asunto"];
        $mensaje = $_POST["mensaje"];

        $sql = "INSERT INTO contacto 
            (nombre, email, telefono, asunto, mensaje) VALUES
            ('$nombre', '$email', '$telefono', '$asunto', '$mensaje')";
        if ($conexion->query($sql) === TRUE) {
            $conexion->close();
            echo "<script>
                    console.log('Mensaje de confirmación mostrado');
                    alert('Su mensaje ha sido recibido con éxito. Pronto nos contactaremos');
                    window.open('', '_self').close();
                  </script>";
        } else {
            echo "Error al insertar datos en la base de datos: " . $conexion->error;
        }
    }
?>