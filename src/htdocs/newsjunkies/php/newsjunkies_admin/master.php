<?php
namespace src;

use classes\Antwort;
use classes\Frage;
use dao\AntwortDao;
use dao\FrageDao;
use DateTime;

require_once 'classes/myAutoloader.php';

$action = $_REQUEST['action'];
$data = $_REQUEST['data'];

/**
 * @return string
 */
function FrageSpeichern() {

    $frage = new Frage(
            null,
            $_REQUEST['FragenText'],
            null,
            new DateTime('now')
    );

    $frageID = FrageDao::insertFrage($frage);


    $antwort1 = new Antwort(null, $_REQUEST['antwort1'], false, $frageID);
    $antwort2 = new Antwort(null, $_REQUEST['antwort2'], false, $frageID);
    $antwort3 = new Antwort(null, $_REQUEST['antwort3'], false, $frageID);
    $antwort4 = new Antwort(null, $_REQUEST['antwort4'], false, $frageID);

    $richtigeAntwort = $_REQUEST['istrichtig'];

    switch ($richtigeAntwort) {
        case('1'):
            $antwort1->setIstRichtig(true);
            break;

        case('2'):
            $antwort2->setIstRichtig(true);
            break;

        case('3'):
            $antwort3->setIstRichtig(true);
            break;

        case('4'):
            $antwort4->setIstRichtig(true);
            break;
    }

    AntwortDao::insertAntwort($antwort1);
    AntwortDao::insertAntwort($antwort2);
    AntwortDao::insertAntwort($antwort3);
    AntwortDao::insertAntwort($antwort4);

    if (isset($_REQUEST['rubrik1'])) {
        FrageDao::setFragenRubrik($frageID, 1);
    }
    if (isset($_REQUEST['rubrik2'])) {
        FrageDao::setFragenRubrik($frageID, 2);
    }
    if (isset($_REQUEST['rubrik3'])) {
        FrageDao::setFragenRubrik($frageID, 3);
    }
    if (isset($_REQUEST['rubrik4'])) {
        FrageDao::setFragenRubrik($frageID, 4);
    }
    if (isset($_REQUEST['rubrik5'])) {
        FrageDao::setFragenRubrik($frageID, 5);
    }
    if (isset($_REQUEST['rubrik6'])) {
        FrageDao::setFragenRubrik($frageID, 6);
    }

    return ("alles gut");

}

switch ($action) {
    case ('FrageSpeichern'):
        print(json_encode(FrageSpeichern()));
}
?>
