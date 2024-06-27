<?php
include 'conexion.php';

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT * FROM preguntas ORDER BY RAND() LIMIT 10";
$result = $conn->query($sql);

if (!$result) {
    die("Error en la consulta: " . $conn->error);
}

$preguntas = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $preguntas[] = $row;
    }
} else {
    echo json_encode(array("error" => "No hay preguntas disponibles"));
    exit;
}

echo json_encode($preguntas);
$conn->close();
?>