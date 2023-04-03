<?php       
    require_once('../inc/func/conexionBaseDatos.php');
    $con = ConexionBaseDatos();
    $Resul_Apellido = $con-> query(ConsultaApellido());
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Dark</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,  minimum-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="../css/estilos.css">
</head>


<body>
    <?php require('../php/header.php')?>
    <main>

        <div class="container">
            <h3 class="h2 text-titulo">Personajes</h3>
   
            <?php  while ($ape = mysqli_fetch_array($Resul_Apellido)) {?>
            <section>
                <h4 class="mt-3 mb-3">Familia  <?php print($ape['apellido']) ?></h4>
                <?php $Resul_Familia = $con-> query(BuscarFamilia($ape['apellido'] ));?>
               
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 ">
                    <?php while ($personaje = mysqli_fetch_array($Resul_Familia)) {?>
                        <div class="col mb-4">
                            <div class="card">
                                <img class="card-img-top" src="<?php print($personaje['img_personaje']) ?>" alt="<?php print($personaje['nombre'].'_'.$personaje['apellido']) ?>">
                                <div class="card-body">
                                    <h5 class="card-title">  <?php print($personaje['nombre'].' '.$personaje['apellido']) ?></h5>
                                    <p class="card-text"><?php print($personaje['descrip_personaje']) ?></p>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
 
            </section>
            <?php } ?>

        </div>
    </main>
    <?php require('../php/footer.php')?>
</body>

</html>
