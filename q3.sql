DELIMITER //
CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE count_sub INT;

    SELECT COUNT(*) INTO count_sub
    FROM Subscribers
    WHERE SubscriberName = subName;

    IF count_sub = 0 THEN
        INSERT INTO Subscribers (SubscriberName, SubscriptionDate)
        VALUES (subName, CURDATE());
    ELSE
        SELECT CONCAT(subName, ' already exists.') AS Message;
    END IF;
END //
DELIMITER ;
