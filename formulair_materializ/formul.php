<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="CSS/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" href="CSS/style.css">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        .row{
            position: relative;
            top: 40px;
            width: 100%;
            margin-left: 10px;
        }

    </style>
</head>

<body>
<div class="navbar-fixed">
    <nav class="nav-extended">
        <div class="nav-wrapper">
            <a href="#" class="brand-logo">Logo</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="films.html">Films</a></li>
                <li><a href="series.html">Series</a></li>
                <li><a href="plus.html">Voir plus</a></li>
            </ul>
        </div>
        <div class="nav-content">
            <form>
                <div class="input-field">
                    <input id="search" type="search" required>
                    <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                    <i class="material-icons">close</i>
                </div>
            </form>
            <ul class="tabs tabs-transparent">
                <li class="tab"><a  class="active" href="#test1">Top films</a></li>
                <li class="tab"><a class="active" href="#test2">Top series</a></li>
                <li class="tab "><a  class="active" href="#test3">A venir</a></li>

            </ul>
        </div>
    </nav>
</div>

<ul class="sidenav" id="mobile-demo">
    <li><a href="films.html">Films</a></li>
    <li><a href="series.html">Series</a></li>
    <li><a href="plus.html">A venir</a></li>
</ul>

<div id="test1" class="col s12">Top films</div>
<div id="test2" class="col s12">Top series</div>
<div id="test3" class="col s12">A venir</div>

<div class="row">
    <div class="col s6">
        <div class="row col s12">
            <h2>Ajout de Personnage</h2>
        </div>
        <form action="#" method="post" class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="nom" name="nom_acteur" type="text" class="validate">
                    <label for="nom">Nom</label>
                </div>
                <div class="input-field col s6">
                    <input  id="prenom" name="prenom_acteur" type="text" class="validate">
                    <label for="prenom">Prenom</label>
                </div>
            </div>
            <div class="row">
                <div class="col s6">
                    <label>Nationnalite</label>
                    <select class="browser-default" name="nationnalite">
                        <option value="0">Choisir un pays ?</option>
                        <option value="1">Senegalaise 1</option>
                        <option value="2">Francaise</option>
                        <option value="3">Americaine</option>
                        <option value="4">Autrichien</option>
                    </select>
                </div>
                <div class="col s6">
                    <label>Sexe</label>
                    <select class="browser-default" name="sexe">
                        <option value="0">Masculin </option>
                        <option value="1">feminin </option>

                    </select>
                </div>
            </div>
        </form>
    </div>
    <div class="col s6">
        <div class="row col s12">
            <h2>Ajout de Realisateur</h2>
        </div>
        <form action="#" method="post" class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="nomreal" name="nom_realisateur" type="text" class="validate">
                    <label for="nomreal">Nom</label>
                </div>
                <div class="input-field col s6">
                    <input  id="prenomreal" name="prenom_realisateur" type="text" class="validate">
                    <label for="prenomreal">Prenom</label>
                </div>
            </div>
            <div class="row">
                <div class="col s6">
                    <label>Nationnalite</label>
                    <select class="browser-default" name="nationnalite_realisateur">
                        <option value="0">Choisir un pays ?</option>
                        <option value="1">Senegalaise 1</option>
                        <option value="2">Francaise</option>
                        <option value="3">Americaine</option>
                        <option value="4">Autrichien</option>
                    </select>
                </div>
                <div class="col s6">
                    <label>Sexe</label>
                    <select class="browser-default" name="sexe">
                        <option value="0">Masculin </option>
                        <option value="1">feminin </option>

                    </select>
                </div>


            </div>
        </form>
    </div>
</div>
<div class="row">
    <div class="col s6">
        <div class="row col s12">
            <h2>Ajout description</h2>
        </div>
        <form action="#" method="post" class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="anne_prod" name="annee_production" type="date" class="validate">
                    <label for="anne_prod"> Date de Production</label>
                </div>
                <div class="input-field col s6">
                        <textarea id="textarea1" name="text_description" class="materialize-textarea"></textarea>
                        <label for="textarea1">Text Description</label>
                </div>
            </div>
        </form>
    </div>
    <div class="col s6">
        <div class="row col s12">
            <h2>Ajout de video</h2>
        </div>
        <form action="#" method="post" class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="format" name="format" type="text" class="validate">
                    <label for="format">Format</label>
                </div>
                <div class="file-field input-field col s6">
                    <div class="btn">
                        <span>File</span>
                        <input type="file">
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" name="image_video">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


<div class="row">
        <div class="row col s12">
            <h2 class="center">Ajout de Film</h2>
        </div>
        <form action="#" method="post" class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="titre_film" name="titre_film" type="text" class="validate">
                    <label for="titre_film">Titre du film</label>
                </div>
                <div class="input-field col s6">
                    <input  id="taille_film" name="taille_film" type="text" class="validate">
                    <label for="taille_film">taille du film en Mo</label>
                </div>
            </div>
            <div class="row">
                <div class="col s6">
                    <label>Genre</label>
                    <select class="browser-default" name="id_genre" id="genre">
                        <?php
                        include ('model.php');
                        $recuperer=$bdd->query('SELECT * FROM genre') or die(print_r($bdd->errorInfo()));
                        while($donner=$recuperer->fetch())
                        {
                            ?>
                            <option value="<?php echo htmlspecialchars($donner['id_genre']);?>">
                                <?php echo htmlspecialchars($donner['id_genre'].' - '.$donner['nom_genre']);?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="col s6">
                    <label>Video</label>
                    <select class="browser-default" name="id_video" id="video">
                        <?php

                        $recuperer=$bdd->query('SELECT * FROM video') or die(print_r($bdd->errorInfo()));
                        while($donnerr=$recuperer->fetch())
                        {
                            ?>
                            <option value="<?php echo htmlspecialchars($donnerr['id_video']);?>">
                                <?php echo htmlspecialchars($donnerr['id_video'].' - '.$donnerr['format']);?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s6">
                    <label>Description</label>
                    <select class="browser-default" name="id_description" id="id_description">
                        <?php
                        include ('model.php');
                        $recuperer=$bdd->query('SELECT * FROM description') or die(print_r($bdd->errorInfo()));
                        while($donner=$recuperer->fetch())
                        {
                            ?>
                            <option value="<?php echo htmlspecialchars($donner['id_description']);?>">
                                <?php echo htmlspecialchars($donner['id_description'].' - '.$donner['text_description']);?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="col s6">
                    <label>Realisateur</label>
                    <select class="browser-default" name="id_realisateur" id="videoo">
                        <?php

                        $recuperer=$bdd->query('SELECT * FROM realisateur') or die(print_r($bdd->errorInfo()));
                        while($donnerr=$recuperer->fetch())
                        {
                            ?>
                            <option value="<?php echo htmlspecialchars($donnerr['id_realisateur']);?>">
                                <?php echo htmlspecialchars($donnerr['id_realisateur'].' - '.$donnerr['prenom_realisateur'].' - '.$donnerr['nom_realisateur']);?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s6">
                    <label>Personnage</label>
                    <select class="browser-default" name="id_personnage" id="id_personnage">
                        <?php
                        include ('model.php');
                        $recuperer=$bdd->query('SELECT * FROM personnage') or die(print_r($bdd->errorInfo()));
                        while($donner=$recuperer->fetch())
                        {
                            ?>
                            <option value="<?php echo htmlspecialchars($donner['id_personnage']);?>">
                                <?php echo htmlspecialchars($donner['id_personnage'].' - '.$donner['prenom_acteur'].' - '.$donner['nom_acteur']);?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <a class="waves-effect waves-light btn-large" href="#" name="validerfilm"><i class="material-icons left">cloud</i>Valider</a>
                </div>
            </div>
        </form>
</div>




<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="JS/jquery.min.js"></script>
<script type="text/javascript" src="JS/monjs.js"></script>
<script type="text/javascript" src="JS/materialize.min.js"></script>
</body>
</html>