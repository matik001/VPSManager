CREATE DATABASE IF NOT EXISTS superbot;
CREATE DATABASE IF NOT EXISTS superchess; 

GRANT ALL PRIVILEGES ON superbot.* TO 'USERNAME'@'%';
GRANT ALL PRIVILEGES ON superchess.* TO 'USERNAME'@'%';