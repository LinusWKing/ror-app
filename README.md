# README

This is a simple web application consuming the [TMDB Api](https://www.themoviedb.org). 


## Execution

Assuming that Docker and Docker-Compose are installed on the target machine.

run` docker-compose build`

Once done open the application on `0.0.0.0:3000`

The app simply allows you to view 10 currently showing films from TMDB. You can save a film as a favorite and add comments

<mark>Note: </mark>  You will need to provide a valid API key in a .env file

#### TODO

- Bootstrap CSS

### Disclaimer
The application is made on Rails 7. I encountered difficulties trying to downgrade to 6 on my Arch distro.