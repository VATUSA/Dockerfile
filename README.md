# VATUSA Dockerfile Images

1. images/base - sets up the base image sans supervisor, php, perl, python, etc.
2. images/gobuild - intermediate container builder for golang projects, skelton
3. images/php - base PHP 7.2 image
4. images/php-nginx - PHP 7.2, FPM and Nginx with supervisord for laravel projects serving
   static files

## TODO:

* Build nginx light container for React projects
* Build jobrunner container utilizing gobuild for various job runners
  * Must be generic for any go project
