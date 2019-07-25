# README

:: RUBY COMMAND ::

# Rails Version
	=> rails -v || --version

# Bundle Update
	=> bundle update

# Update Rails
	=> gem update rails

# Create Project
	=> rails new App || rails new myapp --database=mysql

# Generate Controller
	=> rails g contorller index new about

# Run Server
	=> rails s || rails server

# Generate Controllers
	=> rails generate controller Welcome index [ Controller name = Welcome, function names = index ]

# Raoutes View
	=> bin/rails routes

# Create Model
	=> bin/rails generate model Article title:string text:text

# DB Migration
	=> bin/rails db:migrate

# Redirect to another action
	=>  redirect_to :action => "show", :id => 5

# Add Column Table "Alter Table"
	=> rails generate migration add_email_to_users email:string

# Generate Crud from entity
	=> rails generate scaffold Student name:string age:integer address:string

	rails g scaffold ModelName field_name:data_type field2_name:data_type
