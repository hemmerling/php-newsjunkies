<?php

namespace src;

use classes\Antwort;
use dao\FragenRundeDao;
use DateTime;
use classes\Frage;
use classes\FragenRunde;

require_once 'classes/myAutoloader.php';

$test = new Antwort(null, 'erste Antwort', false, 1);
$test2 = new Antwort(null, 'zweite Antwort', false, 2);
$test3 = new Antwort(null, 'dritte Antwort', true, 3);
$test4 = new Antwort(null, 'vierte Antwort', false, 4);

$frage = new Frage(null, 'Frage nummer eins ! ', null, new DateTime());


$fragenRunde1 = new FragenRunde($frage, array($test, $test2, $test3, $test4));


//print_r($fragenRunde1);

//print_r($test);

$test = FragenRundeDao::getFragenRundeByFragenID(15);

print_r($test);

echo '
   <script type="text/javascript" src="js/newsjunkies.js"></script>;
   <script type="text/javascript" src="js/jquery.js"></script>';
?>