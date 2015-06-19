USE newsjunkies;
INSERT INTO frage (text)
VALUES ("Frage1");
INSERT INTO frage (text)
VALUES ("Frage2");
INSERT INTO frage (text)
VALUES ("Frage3");
INSERT INTO frage (text)
VALUES ("Frage4");

INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Richtige Antwort1 fuer Frage1",1,1);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort2 fuer Frage1",0,1);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort3 fuer Frage1",0,1);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort4 fuer Frage1",0,1);

INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Richtige Antwort1 fuer Frage2",1,2);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort2 fuer Frage2",0,2);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort3 fuer Frage2",0,2);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort4 fuer Frage2",0,2);

INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Richtige Antwort1 fuer Frage3",1,3);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort2 fuer Frage3",0,3);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort3 fuer Frage3",0,3);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort4 fuer Frage3",0,3);

INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Richtige Antwort1 fuer Frage4",1,4);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort2 fuer Frage4",0,4);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort3 fuer Frage4",0,4);
INSERT INTO antwort (text,ist_richtig,frage_id)
VALUES ("Antwort4 fuer Frage4",0,4);