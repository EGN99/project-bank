
# Project Bank
Overview
This is the backend repository for Project Bank, a project tracking system aimed at keeping track of projects done over time by Moringa School students. The system allows for easy reference to past projects and encourages collaboration among students through sharing of ideas and borrowing of projects. The project is built with React on the frontend and Ruby on Rails on the backend.

Team
The Project Eleven team consists of four developers who have specialized in Full Stack development. The frontend of the project is developed with React, while the backend is developed with Ruby on Rails.

## MVP
The following are the minimum viable features that are included in the Project Eleven system:

Authentication
Registration
Creating backend endpoints
Serializing data
Frontend template for registration
Create a dashboard for all Courses then inside the classes allow someone to filter either android , fullstack, web, or data science.
Students and Admin should be able to view projects under each course and add projects.
When creating a Project, there should be:
Project name
Project description
Members
Github link
Admin dashboard:
Should be able to add cohort (name, course and number of students)
Should be able to add or delete projects
Student and Admin have username, email, and password(use password_digest)
Create the Student, Admin, Course( enum category: [:android, :fullstack, :web, :datascience]), Projects(can belong to different categories in the Course), and Cohort classes their respective attributes and relationships.
Cohort has attributes name, course which relates to the enum category in Course class, and number of students as attributes

## Technical Expectations
The Project Eleven backend is built using the following technologies:

Backend: Ruby on Rails
Database: PostgreSQL
Wireframes: Figma (Mobile friendly)
Testing Framework: Jest & Minitests
Frontend: ReactJs & Redux Toolkit(state management)

## Endpoints
The following endpoints have been implemented in the Project Eleven backend:

POST /auth/login - Authentication endpoint
POST /auth/register - Registration endpoint
GET /courses - Get all courses
GET /courses/:id - Get a course by ID
GET /courses/:id/projects - Get all projects for a course
POST /courses/:id/projects - Create a new project for a course
GET /cohorts - Get all cohorts
GET /cohorts/:id - Get a cohort by ID
POST /cohorts - Create a new cohort
DELETE /cohorts/:id - Delete a cohort
GET /students - Get all students
GET /students/:id - Get a student by ID
POST /students - Create a new student
GET /projects - Get all projects
GET /projects/:id - Get a project by ID
PUT /projects/:id - Update a project
DELETE /projects/:id - Delete a project
These endpoints allow for the viewing, creation, editing, and deletion of students, cohorts, courses, and projects. Additionally, the system also allows for searching of students, cohorts, courses, and projects by name, course, category, and other attributes.

## Installation and Setup
To set up the Project Eleven backend locally, follow these steps:

Clone the repository git clone 
Navigate to the project directory cd project-eleven-backend
Install dependencies bundle install
Set up the database rails db:setup
Run the

## Developers
Isaac Tonyloi
Caroline
Elvis

## License
MIT
