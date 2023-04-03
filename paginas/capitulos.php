<?php       
    require_once('../inc/func/conexionBaseDatos.php');
    $con = ConexionBaseDatos();
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
            <section id="capitulos">
                <h1 class="text-titulo">Capitulos</h1>
                <div class="accordion" id="accordionExample">
                    <!--Temporada 1-->
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-outline-dark btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                Temporada 1
                                </button>
                            </h2>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 ">
                                <?php  $Resul_Capitulo = $con-> query(BuscarCapitulos(1));
                                    while ( $capitulo = mysqli_fetch_array($Resul_Capitulo)) {?>
                                        <div class="col mb-4">
                                            <div class="card">
                                                <img class="card-img-top" src="<?php print($capitulo['img_cap']) ?>" alt="<?php print($capitulo['titulo']) ?>">
                                                <div class="card-body">
                                                    <h5 class="card-title"><?php print($capitulo['cap_temp'].' '.$capitulo['titulo']) ?></h5>
                                                    <p class="card-text"><?php print($capitulo['descrip_cap']) ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    <?php }?>                         
                                </div>
                            </div>
                        </div>  
                    </div>  

                    <!--Temporada 2-->
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                            <button class="btn btn-outline-dark btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Temporada 2
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 ">
                                <?php  $Resul_Capitulo = $con-> query(BuscarCapitulos(2));
                                    while ( $capitulo = mysqli_fetch_array($Resul_Capitulo)) {?>
                                        <div class="col mb-4">
                                            <div class="card">
                                                <img class="card-img-top" src="<?php print($capitulo['img_cap']) ?>" alt="<?php print($capitulo['titulo']) ?>">
                                                <div class="card-body">
                                                    <h5 class="card-title"><?php print($capitulo['cap_temp'].' '.$capitulo['titulo']) ?></h5>
                                                    <p class="card-text"><?php print($capitulo['descrip_cap']) ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    <?php }?>                         
                                </div>
                            </div>
                        </div>  
                    </div> 

                    <!--Temporada 3-->
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                            <button class="btn btn-outline-dark btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Temporada 3
                            </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 ">
                                <?php  $Resul_Capitulo = $con-> query(BuscarCapitulos(3));
                                    while ( $capitulo = mysqli_fetch_array($Resul_Capitulo)) {?>
                                        <div class="col mb-4">
                                            <div class="card">
                                                <img class="card-img-top" src="<?php print($capitulo['img_cap']) ?>" alt="<?php print($capitulo['titulo']) ?>">
                                                <div class="card-body">
                                                    <h5 class="card-title"><?php print($capitulo['cap_temp'].' '.$capitulo['titulo']) ?></h5>
                                                    <p class="card-text"><?php print($capitulo['descrip_cap']) ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    <?php }?>                         
                                </div>
                            </div>
                        </div>  
                    </div>  

                </div>
            </section>
        </div>
    </main>
    <?php require('../php/footer.php')?>
</body>

</html>