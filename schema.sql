-- drop the employee db if it exists currently
DROP DATABASE IF EXISTS employee_db;
-- creates employee_db database
CREATE DATABASE employee_db;
-- uses employee_db database
USE employee_db;

-- creates the table "department" within employee_db
CREATE TABLE department (
    -- creates column called id
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    -- makes a string column called name which cannot contain null
    name VARCHAR(30) NOT NULL
);

-- creates the table "role" within employee_db
CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER,
    INDEX dep_ind (department_id),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE SET NULL
);

-- creates the table "employee" within employee_db
CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    INDEX role_ind (role_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE SET NULL,
    manager_id INTEGER,
    INDEX manager_ind (manager_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee (id) ON DELETE SET NULL 
);