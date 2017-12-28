# VATUSA Dockerfile Images

1. images/base - sets up the base image sans supervisor, php, perl, python, etc.
2. images/gobuild - intermediate container builder for golang projects, skelton

## TODO:

* Build php/nginx base container for PHP projects
* Build nginx light container for React projects
* Build jobrunner container utilizing gobuild for various job runners
  * Must be generic for any go project
