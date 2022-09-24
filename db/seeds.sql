INSERT INTO department (name)
VALUES
('IT'),
('Finance'),
('Marketing'),
('Operations');

INSERT INTO role (title, salary, department_id)
VALUES
('Full Stack Developer', 80000, 1),
('Software Engineer', 100000, 1),
('Accountant', 75000, 2),
('Financial Consultant', 150000, 2),
('Marketing Director', 85000, 3),
('Sales Manager', 95000, 3),
('Operations Coordinator', 97000, 4),
('Project Manager', 100000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Mike', 'Hunt', 1, null),
('Andrew', 'DeAngelo', 2, 1),
('Silas', 'Newhouse', 3, null),
('Nolan', 'Kite', 4, 2),
('Yong', 'Lim', 5, null),
('Brooke', 'West', 6, 3),
('Teresa', 'Leshell', 7, null),
('Hannah', 'Vegas', 8, 4);