<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <!--  
    @package   newsjunkies
    @file      antwort.php
    @brief     PHP application of a browser-based news quiz
    @author    Rolf Hemmerling <hemmerling@gmx.net>
    @date      2015-06-18
    @copyright Apache License, Version 2.0
 
    newsjunkies - PHP application of a browser-based news quiz
 
    Copyright 2015 Torben Boergers, Rolf Hemmerling, 
                   Vilius Kukanauskas, Frank Schliffer
 
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
 
    http://www.apache.org/licenses/LICENSE-2.0
 
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    -->
    <head>
        <meta charset="utf-8">
        <title>Newsjunkies - Das Quiz. Die Antwort</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
	        <img src="../../images/newsjunkies_logo.png" alt="Newsjunkies Logo"> 
	    	<h1>Newsjunkies - Das Quiz. Die Antwort</h1>
	    </div>
    	<nav class="navbar navbar-default">
      	<ul class="nav navbar-nav">
        	<li class="active"><a href="index.php">Neues Spiel</a></li>
        	<li><a href="frage.php">Neue Frage</a></li>
      	</ul>
  		</nav>
        <p>Entwickelt auf dem "Hackathon beim Corporate Media Forum - 
        kleine Anwendungen, grosse Ideen!", 2015-06-17 - 2015-06-18</p>
        <p>Copyright 2015 Torben B&ouml;rgers, Rolf Hemmerling, 
        Vilius Kukanauskas, Frank Schliffer</p>
        <p>Licensed under the Apache License, Version 2.0</p>
        <!-- <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script> -->
	<script src="../../js/jquery.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
		<?php 
		session_start();
		$anzahl_fragen_pro_spiel = 4;
		
		if (!isset($_SESSION["anzahl_richtiger_antworten"])) {
			$_SESSION["anzahl_richtiger_antworten"] = 0;
		};
		if (!isset($_SESSION["anzahl_antworten"])) {
			$_SESSION["anzahl_antworten"] = 0;
		} else {
			$_SESSION["anzahl_antworten"]++;
		};
		if (!isset($_SESSION["frage_nummer"])) {
			$_SESSION["frage_nummer"] = 0;
		} else {
			$_SESSION["frage_nummer"]++;
		};
			
		?>
		<?php
		if($_POST["antwort"]) {
			echo "<div class='alert alert-success'>";
		} else {
			echo "<div class='alert alert-danger'>";
		};
		echo "Ihre Antwort ist <strong>";
		if($_POST["antwort"]) {
			echo "richtig";
			     $_SESSION["anzahl_richtiger_antworten"]++;
		} else {
			echo "falsch";
		};
		echo "</br>";
		$progress1 = $_SESSION["anzahl_antworten"] / 
				    $anzahl_fragen_pro_spiel * 100;
		$progress2 = $_SESSION["anzahl_richtiger_antworten"] / 
				    $anzahl_fragen_pro_spiel * 100;
		?>
		</strong>
		</div>Fortschritt:
		<div class="progress1">
  	  		<div class="progress-bar" style="width:<?php echo $progress1;?>%"><?php echo $progress1;?>% Fortschritt</div>
  	  	</div><br>Erfolg:
  	  	<div class="progress2">
   	  		<div class="progress-bar progress-bar-danger" style="width:<?php echo $progress2;?>%"><?php echo $progress2;?>% Erfolg</div>
  	  	</div><br>
  	  	<?php 
		echo "Anzahl richtig beantworteter Fragen:" . 
			$_SESSION["anzahl_richtiger_antworten"] . "</br>";
		echo "Anzahl beantworteter Fragen:" .
			$_SESSION["anzahl_antworten"] . "</br>";

		if ( $_SESSION["anzahl_antworten"] < 
			 $anzahl_fragen_pro_spiel ) {
			echo '<a href="frage.php">Neue Frage</a></br>';
		} else {
			echo "<div class='alert alert-info'>";
			echo "Spielende! Sie haben " . 
				  $_SESSION["anzahl_richtiger_antworten"] . 
				  " von " . 
				  $_SESSION["anzahl_antworten"].
				  " Fragen richtig beantwortet</br>";
			echo "</div>";
		};
	  ?>
	  </div>
		<a href="index.php">Neues Spiel</a>
		</body>
    </html>