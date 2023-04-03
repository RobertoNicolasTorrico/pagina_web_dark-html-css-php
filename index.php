<?php       
    require_once('inc/func/conexionBaseDatos.php');
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
    <link rel="stylesheet" href="css/estilos.css">
</head>

<body>
<?php require('./php/header_index.php')?>
    <main>
        <div class="container">
            <section>
                <h3 class="h2 text-titulo">El ciclo final comienza</h3>
                <div class="col-12">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <p>Después de meses de espera, la tercera temporada de Dark por fin reveló su trailer final que presenta el principio del fin del mundo y la forma en la que funciona esta extraña máquina del tiempo que la Martha del futuro alterno usa para rescatar a Jonas y llevarlo a su mundo</p>
                            <p>No se puede evitar la destrucción, pero está claro que todavía hay una pequeña oportunidad para detener a Adam, pero Jonas tiene que arriesgarlo todo y, en el camino, nos van a aclarar todos los detalles y conexiones que todavía no se han revelado por completo.</p>

                        </div>
                        <div class="col-12 col-md-6">
                            <figure class="figure">
                                <img class="figure-img rounded d-block w-100" src="imagenes/inicio/dark.jpg" alt="dark">
                                <figcaption class="figure-caption">
                                    <p>Trailer publicado en <a href="https://www.youtube.com/watch?v=z2wPBG-GSJ0" target="new">Youtube</a></p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
            </section>

            <!--Seccion del tema de las Temporadas-->
            <section>
                <h4 class="h2 text-titulo">Temporadas</h4>
                <div class="col-12">
                    <div class="row">
                        <?php   while ($temporada = mysqli_fetch_array($Resul_Temporada)) {?>
                            <div class="shadow border border-light text-center col-md-3 ml-auto mr-auto mt-3 mb-md-5 mb-5">
                                <h4 class="h3 font-weight-light"><?php print($temporada['temp']) ?> </h4>
                                <img class="d-block w-100" src="<?php print($temporada['img_temp']) ?>" alt= "<?php print($temporada['temp']) ?>  Temporada">
                                <p class="text-left mt-2"><?php print($temporada['descrip_temp']) ?></p>
                                <a data-fancybox class="btn btn-dark mb-4" href="<?php print($temporada['enlace_trailer']) ?>">Ver trailer</a>
                            </div>   
                        <?php }?>
                    </div>
                </div>
            </section>
        </div>
    </main>
    

    <?php require('./php/footer.php')?>
</body>

</html>