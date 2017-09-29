<header>
    <!--bloc titre -->
    <section class="entête_category">
        <img src="images/logo.svg" alt="logo"/>
        <a href="index.php">
            <h1 class="h1category">Maxime<strong>Dolo</strong></h1>
        </a>
    </section>


    <nav class="navheader">
        <!--bouton du Menu "bars" -->
        <a class="btmenu" href="index.php">
            <i class="fa fa-bars fa-2x" aria-hidden="true"></i>
        </a>

        <div class="arrows">
            <?php
                if( $previous ):
             ?>
            <a href="category.php?section=<?php echo $previous; ?>">
                <i class="fa fa-angle-left fa-2x" aria-hidden="true"></i>
            </a>
            <?php
                endif;
            ?>

            <h2 class="h2category"><?= $_GET["section"]; ?></h2>

            <?php
                if( $next ):
             ?>
            <a href="category.php?section=<?php echo $next; ?>">
                <i class="fa fa-angle-right fa-2x" aria-hidden="true"></i>
            </a>
            <?php
                endif;
            ?>
        </div>
    </nav>

</header>
