<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <!--  
    @package   newsjunkies
    @file      frage.php
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
        <title>Newsjunkies - Das Quiz. Die Frage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
    	</head>
    <body>
        <div class="container">
	        <img src="../../images/newsjunkies_logo.png" alt="Newsjunkies Logo"> 
	   	<h1>Newsjunkies - Das Quiz. Die Frage</h1>
	    </div>
        <nav class="navbar navbar-default">
     	<ul class="nav navbar-nav">
        	<li class="active"><a href="index.php">Neues Spiel</a></li>
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
		$conn = null;
		$table_frage = "frage";
		$table_antwort = "antwort";
		$ausgewaehlte_frage = $_SESSION["frage_nummer"];

        function openConnection() {	
		    global $conn;	
    			$host = "localhost";
    			$dbname = "newsjunkies";
    			$user = "root";
    			$pass = null;
			$conn = new mysqli($host, $user, $pass, $dbname);
			// Check connection
			if ($conn->connect_error) {
    			die("Connection failed: " . $conn->connect_error);
			};
		}

		function getFrage($id) {
			global $conn;
			global $table_frage;
			$sql = "SELECT id, text FROM $table_frage WHERE id=$id";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
    			$row = $result->fetch_assoc();
        		echo $row["text"];
			} else { 
				echo "Fehler";
			}

		}

		function getAntwort($frage_id, $id) {
			global $conn;
			global $table_antwort;
			$sql = "SELECT id, text, frage_id FROM $table_antwort WHERE frage_id=$frage_id";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
				for($ii = 0; $ii < $id; $ii++) {
	    			$row = $result->fetch_assoc();
				}
    	    	echo $row["text"];
   			} else {
    			echo "Fehler";
			}

		}

		function getIstRichtig($frage_id, $id) {
			global $conn;
			global $table_antwort;
			$sql = "SELECT id, ist_richtig, frage_id FROM $table_antwort WHERE frage_id=$frage_id";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
				for($ii = 0; $ii < $id; $ii++) {
	    			$row = $result->fetch_assoc();
				}
    	    	echo $row["ist_richtig"];
   			} else {
    			echo "Fehler";
			}
		}

        openConnection();
		?>
		<form action="antwort.php" method="post"> 
		<p>Ihre Frage: <?php getFrage($ausgewaehlte_frage); ?></p> 
		<p>Waehlen Sie eine Antwort:</p> 
			<fieldset> 
				<input type="radio" name="antwort" value="<?php getIstRichtig($ausgewaehlte_frage,1); ?>" checked="checked">
				<label class="label label-default"><?php getAntwort($ausgewaehlte_frage,1); ?></label><br>
				<input type="radio" name="antwort" value="<?php getIstRichtig($ausgewaehlte_frage,2); ?>">
				<label class="label label-info"><?php getAntwort($ausgewaehlte_frage,2); ?></label><br>
				<input type="radio" name="antwort" value="<?php getIstRichtig($ausgewaehlte_frage,3); ?>">		
				<label class="label label-warning"><?php getAntwort($ausgewaehlte_frage,3); ?></label><br>
				<input type="radio" name="antwort" value="<?php getIstRichtig($ausgewaehlte_frage,4); ?>">
				<label class="label-danger"><?php getAntwort($ausgewaehlte_frage,4); ?></label><br>
			</fieldset>
			<button type="submit" class="btn btn-lg btn-primary">Antwort absenden</button>
		</form> 

		<?php 
		$conn->close();
		?> 
		<a href="index.php">Neues Spiel</a> 
    </body>
    </html>
