# VXH
This app allows users to publish their photography.

## Technologies used
This site uses the following Gemfiles with Ruby 2.3.1

##### 1. Database
 - gem 'pg', '~> 0.18'(Postgresql 9.6)

##### 2. Photo uploading:
 - gem 'dotenv-rails', group: :development, require: 'dotenv/rails-now' gem 'paperclip' gem 'aws-sdk'

##### 3. Secure Password:
 - gem 'bcrypt', '~> 3.1.7'

##### 4. CSS stylizing:
- gem 'bootstrap-sass', '~> 3.3.6'


## Approach taken
- create signup page

- create login page

- create logout page

- authentication

- create three models
	- User
	- Picture
	- Comment
- link the pages together
- Upload image

## Installation/startup instructions
Users can create, login, and logout of their accounts.The users are also given the choice to upload__ a profile picture with a tagline and a short bio. Additionally, __ allows it's users the ability to edit and delete their pictures and captions.

# Unsolved problems
- Cannot deploy app onto Heroku.
- Grid design did not meet expectations.

# Next steps
- Fix deploying issue
- Utilize bootsrap more

#### Trello board link
https://trello.com/b/MHl1T5sx/wdi-project-2
