# php-newsjunkies
NEWSjunkies - Das Quiz vom "Hackathon beim Corporate Media Forum 2015 - kleine Anwendungen, grosse Ideen!" 

![NEWSjunkies Logo](/doc/images/newsjunkies_logo.png "NEWSjunkies Logo") 

## Team
- Torben Börgers, Journalist, http://www.xing.com/profile/Torben_Boergers2: Projekt-Pitch. Quiz-Fragen und -Antworten. Ideen-Geber / Domainexperte / Product Owner. Anwendungstester
- Rolf Hemmerling, http://www.hemmerling.com, http://www.xing.com/profile/Rolf_Hemmerling, http://de.linkedin.com/in/hemmerling, Entwickler: Quiz Anwendung für Internet-Browser, mit PHP und MySQL
- Vilius Kukanauskas, http://www.vilkas.de/, http://www.xing.com/profile/Vilius_Kukanauskas, http://www.facebook.com/vilius.kukanauskas, Entwickler: Quiz Administration für Internet-Browser zur zielgruppengerechten Eingabe der Quiz-Fragen und -Antworten, mit PHP und MySQL. Entwicklung des SQL-Datenbankschemas
- Frank Schliffer, http://www.facebook.com/frank.schliffer, Entwickler: Quiz Anwendung als Windows-Desktop Programm, mit C# ( in diesem Projekt *nicht* enthalten ). Entwicklung des SQL-Datenbankschemas

Besonderen Dank an Janina Schunk, Graphikerin und Hackathon-Teilnehmerin in einem anderen Team, die als Gast uns das "NWSjunkies" Logo entworfen hat :-).

## Projekt Pitch

NEWSjunkies macht sich zwei Grundtriebe des Menschen zu Nutze, um die Begeisterung für Nachrichten zu steigern: Wissensdurst und Spaß am Wettkampf. Grafisch ähnelt die App sehr ihrem Vorbild, dem Quiz-Duell: In der oberen Hälfte des Bildschirms wird eine Frage eingeblendet, in der unteren Hälfte vier anklickbare Antwortmöglichkeiten vorgegeben. Inhaltlich gibt es aber einen großen Unterschied: Während beim Quizduell und anderen Rate-Apps die Fragen eher allgemein und zeitlos gewählt sind, lässt Newsjunkie das Nachrichtengeschehen der zurückliegenden Woche Revue passieren.

Ziel der App ist es, zwei häufig geäußerten Vorbehalten gegenüber Nachrichten zu begegnen – nämlich, dass sie langweilig und unverständlich sein sollen. Mit Hilfe der App kann der Spieler sich in kürzester Zeit auf unterhaltsame Weise einen Überblick über das Nachrichtengeschehen der vergangenen Woche verschaffen und dabei zugleich überprüfen, ob er „genug“ Nachrichten konsumiert hat und dabei auch aufmerksam war – die perfekte Überbrückung für Wartezeiten an Bushaltestellen oder U-Bahnstationen.

Im besten Fall wird der User der App dazu animiert, sich noch intensiver als bisher mit den bereits vorhandenen Inhalten eines Senders zu befassen – denkbar ist zum Beispiel, dass jede falsche Antwort dazu verleitet, bei der nächsten Tagesschau genauer hinzuschauen. Am Ende sollte der Spieler bestenfalls beides sein: unterhalten und besser informiert.

## Das Hackathon
- Veranstalter: ARD/ZDF Medienakademie 
- Veranstaltung: "Hackathon beim Corporate Media Forum - kleine Anwendungen, große Ideen!" 
- Veranstaltungs-Datum: 2015-06-17 - 2015-06-18
- Veranstaltungs-Ort: Hochschule Hannover, Gebäude "Planet MID", Expo Plaza 4, D-30539 Hannover, Deutschland

## Entwicklungsumgebung
### Software-Werkzeuge
- LAMP mit PHP5, Apache, MySQL ( für Windows z.B. XAMPP 1.7.7, http://sourceforge.net/projects/xampp/files/XAMPP%20Windows/1.7.7/ )
- Eclipse for PHP Developers, http://www.eclipse.org/downloads/packages/eclipse-php-developers/lunasr2

### Setup der Datenbank
Der experimentelle Code nutzt den SQL-Datenbanknutzer "root", kein Passwort gesetzt ( null ). Die Daten werden hier gesetzt:
- newsjunkies/php\newsjunkies_quiz/frage.php, Funktion "openConnection()"
- newsjunkies/php/newsjunkies_admin/classes\MyPDO.php, Klasse "MyPDO"

In den beiden PHP-Dateien "index.php" sowie "frage.php" und "antwort.php" wird "jquery.js" vom im Projekt festgelegten Pfad "../../js/jquery.js" geladen

### Setup der Anwendung
- Kopieren Sie das Projekt-Verzeichnis "newsjunkies" in das Verzeichnis "htdocs" des Apache-Servers

### Aufruf der Anwendungen
Mal angenommen, dass der Apache-Server auf dem eigenen Rechner ( http://localhost ) auf Port 8502 läuft:
- Rufen Sie die Quiz-Administration mit Ihrem Internet-Browser auf: http://localhost:8502/newsjunkies/php/newsjunkies_admin/
- Rufen Sie das Quiz mit Ihrem Internet-Browser auf: http://localhost:8502/newsjunkies/php/newsjunkies_quiz/

## Ergebnis
- Die Ergebnisse des Hackathons wurden auf der Veranstaltung "Corporate Media Forum 2015", http://www.nordmedia.de/pages/veranstaltungen/corporate_media_forum/, im Konferenzsaal des Hochschul-Gebäudes "Planet MID" am 2015-06-18 vor den Veranstaltungsteilnehmern präsentiert.
- Tublr "#ardzdfhack. Livetumblr vom Hackathon der ARD-ZDF-Medienakademie 2015", http://ardzdfhack.tumblr.com/
- Twitter "ARDZDFmedienakademie, @ARDZDF_Akademie", http://www.twitter.com/ARDZDF_Akademie
- Twitter - Hashtag "#ardzdfhack", http://www.twitter.com/hashtag/ardzdfhack
