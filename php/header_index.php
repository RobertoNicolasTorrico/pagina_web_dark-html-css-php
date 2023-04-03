<?php

$menuNav=[
    ['nav-link','index.php','Inicio'],
    ['nav-link','paginas/galeria.php','Galeria'],
    ['nav-link','paginas/personajes.php','Personajes'],
    ['nav-link','paginas/capitulos.php','Capitulos'],
];

    
?>

<header>
    <div class="container-fluid bg-negro">
        <h1 class="display-2">Dark</h1>
        <h2 class="h5 text-uppercase mt-3">No sólo el pasado influye en el futuro sino que el futuro también influye en el pasado</h2>
        <nav class="navbar navbar-expand-md navbar-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample01">
                <ul class="navbar-nav">
                    <?php foreach ($menuNav as [$clase, $nomhtml,$nomItem]) { ?>
                        <li class="nav-item">
                            <a class= <?php echo($clase);?> href= <?php echo($nomhtml);?>> <?php echo($nomItem);?> </a>
                        </li>
                    <?php }?>
                </ul>
            </div>
        </nav>
    </div>
</header>
