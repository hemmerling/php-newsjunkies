<?php
namespace dao;

use classes\Antwort;
use classes\MyPDO;

/**
 * Erstellung:              6/17/15
 * Autor:                   Vilius Kukanauskas
 * Beschreibung:            
 */


class AntwortDao {

    /**
     * @param Antwort $antwort
     * @return string
     */
    public static function insertAntwort($antwort) {
        $db=MyPDO::getInstance();
        $db->query('insert into antwort(text, ist_richtig, frage_id)
                    VALUES (:text, :ist_richtig, :frage_id )');
        $db->bindVal(':text', $antwort->getText());
        $db->bindVal(':ist_richtig', $antwort->getIstRichtig());
        $db->bindVal(':frage_id', $antwort->getFrageID());
        $db->execute();
        $lastAntwortID =  $db->lastInsertId();
        
    }

    public static function getAntwortByID($id){
        $db=MyPDO::getInstance();
        $db->query('select * from antwort WHERE id='.$id);
        $result = $db->single();
        return new Antwort($result['id'], $result['text'], $result['ist_richtig'], $result['frage_id']);
    }

    public static function allign(){

    }
}
?>
