-- Create tables
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) CHECK (salary > 0)
);

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE employee_projects (
    employee_id INTEGER REFERENCES employees(id),
    project_id INTEGER REFERENCES projects(id),
    role VARCHAR(50),
    PRIMARY KEY (employee_id, project_id)
);

-- Insert sample data
INSERT INTO employees (name, email, hire_date, salary) VALUES
('Alice Smith', 'alice.smith@example.com', '2023-01-15', 60000.00),
('Bob Johnson', 'bob.johnson@example.com', '2022-05-23', 55000.00),
('Charlie Brown', 'charlie.brown@example.com', '2021-11-02', 70000.00);

INSERT INTO departments (name) VALUES
('Engineering'),
('Marketing'),
('Sales');

INSERT INTO projects (name, start_date, end_date) VALUES
('Project Alpha', '2024-01-01', '2024-12-31'),
('Project Beta', '2024-03-01', '2024-09-30');

INSERT INTO employee_projects (employee_id, project_id, role) VALUES
(1, 1, 'Lead Developer'),
(2, 1, 'Developer'),
(3, 2, 'Project Manager');

-- Create indexes
CREATE INDEX idx_employee_email ON employees (email);
CREATE INDEX idx_project_dates ON projects (start_date, end_date);

-- Add foreign key constraints (already added in table creation for this example)
-- Add more data or constraints as needed
