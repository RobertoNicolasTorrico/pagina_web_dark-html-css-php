<?php
    
    function ConexionBaseDatos() {
        $servidor="localhost";
        $nombre_usuario="root";
        $password="root";
        $base_de_datos="dark";

        $con = mysqli_connect($servidor,$nombre_usuario,$password,$base_de_datos);
        if (!$con) {
            die('Could not connect: ' . mysqli_error($con));
        }
        return $con;
    }

    function ConsultaTemporadas(){
        $sql = "SELECT * FROM temporada";
        return  $sql;
    } 

    function ConsultaApellido(){
        $sql = "SELECT apellido FROM personaje group by apellido";
        return  $sql;
    } 
    function BuscarCapitulos($id_temporada){
        $sql = "SELECT * FROM capitulo where Temporada_id_temporada = $id_temporada";
        return  $sql;
    } 
    function BuscarFamilia($apellido){
        $sql = "SELECT * FROM personaje where apellido = '$apellido'";
        return  $sql;
    } 

    function BuscarGaleria($id_temporada){
        $sql = "SELECT * FROM galeria where temporada_id_temporada = $id_temporada";
        return  $sql;
    } 


   
?>

