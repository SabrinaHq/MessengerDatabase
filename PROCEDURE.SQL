------------procedure


SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE get_user IS
	userid USERS.USER_ID%type;
	name USERS.USER_NAME%type;
	emailid USERS.EMAIL%type;
BEGIN
	userid:=4;
	SELECT USER_NAME,EMAIL INTO name,emailid FROM USERS WHERE USER_ID=userid;
	DBMS_OUTPUT.PUT_LINE('Name : '||name||' Email : '||emailid);
END;
/
SHOW ERRORS;

BEGIN
 get_user;
 END;
 /


SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE add_group(
  groupid USER_GROUP.GROUP_ID%TYPE,
  insertname USER_GROUP.GROUP_NAME%TYPE) IS
BEGIN
  INSERT INTO USER_GROUP(GROUP_ID,GROUP_NAME)
  VALUES (groupid,insertname);
  COMMIT;
END add_group;
/
SHOW ERRORS;

BEGIN
 add_group(7,'ECE 2K13');
 END;
 /
