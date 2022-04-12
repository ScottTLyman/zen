CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS contractors(
  id INT AUTO_INCREMENT PRIMARY KEY,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name TEXT NOT NULL
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS companies(
  id INT AUTO_INCREMENT PRIMARY KEY,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name TEXT NOT NULL
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS jobs(
  id INT AUTO_INCREMENT PRIMARY KEY,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  companyId INT NOT NULL,
  contractorId INT NOT NULL,
  FOREIGN KEY (companyId) REFERENCES companies(id) ON DELETE CASCADE,
  FOREIGN KEY (contractorId) REFERENCES contractors(id) ON DELETE CASCADE
) default charset utf8 COMMENT '';
SELECT
  *
FROM
  contractors;
SELECT
  *
FROM
  companies;
INSERT INTO
  contractors (name)
VALUES
  ("Joe Blow");
INSERT INTO
  contractors (name)
VALUES
  ("Giuseppe laMarca");
INSERT INTO
  contractors (name)
VALUES
  ("Buster McCracken");
INSERT INTO
  companies (name)
VALUES
  ("How Blow Can You Go");
INSERT INTO
  companies (name)
VALUES
  ("Marca Plot and Build");
INSERT INTO
  companies (name)
VALUES
  ("Buster Barricades");
DELETE FROM
  companies
WHERE
  id = 3;