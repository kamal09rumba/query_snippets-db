DELIMITER ;;
DROP PROCEDURE IF EXISTS dowhile ;;
CREATE PROCEDURE dowhile()
BEGIN
	DECLARE v1 INT DEFAULT 1000000;
	WHILE v1 > 0 DO
	INSERT INTO table_name(col1,col2..) VALUES (concat(floor(rand() * 1000000),'-','cat'));
	SET v1 = v1 -1;
	END WHILE;
END;;
DELIMITER ;
call dowhile();
select * from table_name;

