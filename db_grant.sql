#mysql -u dondb -pdps0226db < ./db_grant.sql

#Grant Privileges to don, root, dondb

GRANT ALL PRIVILEGES ON admin_adds_user_development.* TO 'don'@'localhost';
GRANT ALL PRIVILEGES ON admin_adds_user_development.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON admin_adds_user_development.* TO 'dondb'@'localhost';

GRANT ALL PRIVILEGES ON admin_adds_user_production.* TO 'don'@'localhost';
GRANT ALL PRIVILEGES ON admin_adds_user_production.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON admin_adds_user_production.* TO 'dondb'@'localhost';

GRANT ALL PRIVILEGES ON admin_adds_user_test.* TO 'don'@'localhost';
GRANT ALL PRIVILEGES ON admin_adds_user_test.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON admin_adds_user_test.* TO 'dondb'@'localhost';

#Show Databases

#show databases;

