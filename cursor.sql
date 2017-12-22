-----------cursor



SET SERVEROUTPUT ON
DECLARE
     CURSOR msg_cur IS
  SELECT MESSAGE_CONTENT,MESSAGE_CREATION_DATE FROM MESSAGE;
  record msg_cur%ROWTYPE;

BEGIN
OPEN msg_cur;
      LOOP
        FETCH msg_cur INTO record;
        EXIT WHEN msg_cur%ROWCOUNT>3;
        DBMS_OUTPUT.PUT_LINE ('Message body : ' || record.MESSAGE_CONTENT || ' Creation date : ' || record.MESSAGE_CREATION_DATE);  
	END LOOP;
      CLOSE msg_cur;   
END;
/
  