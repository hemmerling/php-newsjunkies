# php-newsjunkies
NEWSjunkies - Das Quiz vom "Hackathon beim Corporate Media Forum 2015 - kleine Anwendungen, grosse Ideen!" 

![NEWSjunkies Logo](/doc/images/newsjunkies_logo.jpg "NEWSjunkies Logo") 

## Team
- Torben Börgers, Journalist: Projekt-Pitch, Quiz-Fragen und -Antworten; , Ideen-Geber / Domainexperte / Product Owner, Anwendungstester
- Rolf Hemmerling, Entwickler: Quiz Anwendung für Internet-Browser, mit PHP und MySQL
- Vilius Kukanauskas, Entwickler: Quiz Administration für Internet-Browser zur zielgruppengerechten Eingabe der Quiz-Fragen und -Antworten, mit PHP und MySQL; Entwicklung des SQL-Datenbankschemas
- Frank Schliffer, Entwickler: Quiz Anwendung als Windows-Desktop Programm, mit C# ( in diesem Projekt *nicht* enthalten ); Entwicklung des SQL-Datenbankschemas

Dank an Janina Schunk, Graphikerin und Hackathon-Teilnehmerin in einem anderen Team, die als Gast uns das "NWSjunkies" Logo entworfen hat :-).

## Projekt Pitch:

NEWSjunkies macht sich zwei Grundtriebe des Menschen zu Nutze, um die Begeisterung für Nachrichten zu steigern: Wissensdurst und Spaß am Wettkampf. Grafisch ähnelt die App sehr ihrem Vorbild, dem Quiz-Duell: In der oberen Hälfte des Bildschirms wird eine Frage eingeblendet, in der unteren Hälfte vier anklickbare Antwortmöglichkeiten vorgegeben. Inhaltlich gibt es aber einen großen Unterschied: Während beim Quizduell und anderen Rate-Apps die Fragen eher allgemein und zeitlos gewählt sind, lässt Newsjunkie das Nachrichtengeschehen der zurückliegenden Woche Revue passieren.

Ziel der App ist es, zwei häufig geäußerten Vorbehalten gegenüber Nachrichten zu begegnen – nämlich, dass sie langweilig und unverständlich sein sollen. Mit Hilfe der App kann der Spieler sich in kürzester Zeit auf unterhaltsame Weise einen Überblick über das Nachrichtengeschehen der vergangenen Woche verschaffen und dabei zugleich überprüfen, ob er „genug“ Nachrichten konsumiert hat und dabei auch aufmerksam war – die perfekte Überbrückung für Wartezeiten an Bushaltestellen oder U-Bahnstationen.

Im besten Fall wird der User der App dazu animiert, sich noch intensiver als bisher mit den bereits vorhandenen Inhalten eines Senders zu befassen – denkbar ist zum Beispiel, dass jede falsche Antwort dazu verleitet, bei der nächsten Tagesschau genauer hinzuschauen. Am Ende sollte der Spieler bestenfalls beides sein: unterhalten und besser informiert.

## Das Hackathon
Veranstalter: ARD/ZDF Medienakademie 
Veranstaltung: "Hackathon beim Corporate Media Forum - kleine Anwendungen, große Ideen!" 
Veranstaltungs-Datum: 2015-06-17 - 2015-06-18
Veranstaltungs-Ort: Hochschule Hannover, Gebäude "Planet MID", Expo Plaza 4, D-30539 Hannover, Deutschland

## Entwicklungsumgebung
- LAMP mit PHP5, MySQL ( für Windows z.B. XAMPP 1.7.7, http://sourceforge.net/projects/xampp/files/XAMPP%20Windows/1.7.7/ )
- Eclipse for PHP Developers, http://www.eclipse.org/downloads/packages/eclipse-php-developers/lunasr2

Der experimentelle Code nutzt den SQL-Datenbanknutzer "root", kein Passwort gesetzt ( null ).
- newsjunkies\php\newsjunkies_quiz\frage.php, Funktion "openConnection()"
- newsjunkies\php\newsjunkies_admin\classes\MyPDO.php, Klasse "MyPDO"

## Ergebnis
- Die Ergebnisse des Hackathons wurden auf der Veranstaltung "Corporate Media Forum 2015", http://www.nordmedia.de/pages/veranstaltungen/corporate_media_forum/, im Konferenzsaal des Hochschul-Gebäudes "Planet MID" am 2015-06-18 vor den Veranstaltungsteilnehmern präsentiert.
- Tublr "#ardzdfhack. Livetumblr vom Hackathon der ARD-ZDF-Medienakademie 2015", http://ardzdfhack.tumblr.com/
- Twitter "ARDZDFmedienakademie, @ARDZDF_Akademie", http://www.twitter.com/ARDZDF_Akademie
- Twitter - Hashtag "#ardzdfhack", http://www.twitter.com/hashtag/ardzdfhack
