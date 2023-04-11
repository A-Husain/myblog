# MyBlog

## Project Overview

MyBlog is a web application that allows users to sign in, create posts, edit posts, delete posts, comment on posts, view user profiles, and search up tags in posts. It was created using Ruby on Rails.

The project is led by Minnesota State University (MNSU) Professor Dr. Guarionex Salivia.

This repo contains all the files required to run the MyBlog web application. It was written by Afnan Husain as part of her Spring 2023 Undergraduate Computer Science Project. The client, Jonathan Hardwick, was consulted for feedback and suggestions. 

Future teams can use this repo as a template when creating their own web applications using Ruby on Rails. 

## Contents 

### Controllers

Controllers is the file containing all the required controllers for successful functionality of all the tasks this web application must achieve. 

### Models 

Models is the file containing Ruby classes that represent 'comments' and 'posts'. These models interact with MyBlog's database through the Active Record feature.

### \_comment.html.erb

This file formats the comment section of a post using HTML.

### application.html.erb

This file formats the homepage for MyBlog using HTML.

### posts 

This folder contains all the individual views used for formatting each individual functionaliy using HTML, e.g. edit, new, show, etc.

### routes.rb

This file provides URLs that help redirect incoming requests to controllers and actions. 

### Gemfile

This file provides the reader with all the gems required for the successful functionality of MyBlog.

## Repo Setup

### Required

Download Ruby, Rails, and Sublime Text using the respective official websites. 

Once downloaded, open the Command Prompt and run:
```bash
ruby -v
```
and
```bash
rails -v
```
to ensure both are downloaded.

Fork and clone the repo by downloading it to your local device. 

Open Sublime Text, click on File > Open Folder and navigate to where MyBlog was downloaded. Once the file is open, navigate to it using the Command Prompt. Then run:

```bash
bundle install
```

to ensure all the required gems are installed. 

Run:
```bash
rails s
```

Then open your preferred web browser and type "localhost:3000" to view the website. 


