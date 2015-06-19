<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <!--  
    @package   newsjunkies
    @file      index.php
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
        <title>Newsjunkies - Das Quiz</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
    </head>
    <body>
 		<div class="container">
	        <img src="../../images/newsjunkies_logo.png" alt="Newsjunkies Logo"> 
	        <h1>Newsjunkies - Das Quiz</h1>
		</div>
        <nav class="navbar navbar-default">
      	<ul class="nav navbar-nav">
        	<li class="active"><a href="frage.php">Neues Spiel</a></li>
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
		$_SESSION["frage_nummer"] = 1; // insert 1
		$_SESSION["frage_nummer"] = 15; // dump 2
		$_SESSION["frage_nummer"] = 37; // dump 4
		$_SESSION["anzahl_richtiger_antworten"] = 0;
		$_SESSION["anzahl_antworten"] = 0;
		?>
		<a href="frage.php">Neues Spiel</a>
    </body>
    </html>
