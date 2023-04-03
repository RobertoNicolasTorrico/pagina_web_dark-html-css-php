<?php       
    require_once('../inc/func/conexionBaseDatos.php');
    $con = ConexionBaseDatos();
    $Resul_Temporada = $con-> query(ConsultaTemporadas());
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
            <h3 class="h2 text-titulo">Galeria de fotos</h3>
            <div class="col-12  col-md-12 col-lg-12">
                <?php  while ($temporada = mysqli_fetch_array($Resul_Temporada)) {?>
                    <section class="separacion">
                        <h4 class="pt-10"><?php print($temporada['temp']) ?></h4>
                        <div class="row">
                            <?php   
                            $Resul_Galeria = $con-> query(BuscarGaleria($temporada['id_temporada']));
                            while ( $galeria = mysqli_fetch_array($Resul_Galeria)) {?>
                                <div class="col-12 col-md-6 col-lg-4">
                                    <a data-fancybox="gallery" href= "<?php print($galeria['img_galeria']) ?>" >
                                        <img class="img-fluid" src= "<?php print($galeria['img_galeria']) ?>" alt="<?php print($galeria['nombre_img']) ?>">
                                    </a>
                                </div>
                            <?php }?>
                        </div>
                    </section>      
                <?php } ?>
            </div>
        </div>
    </main>
    
    <?php require('../php/footer.php')?>
</body>

</html>