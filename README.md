# Shiny Server

This docker image has version: 1.5.16.958 of shiny-server

## How to use it

For simple docker running and test you run

```bash
docker container run -d -p 3838:3838 alopexmm/shiny-server
```

If you want to add some script pages

```bash
docker container run -d -p 3838:3838 -v "$PWD/apps:/srv/shiny-server/" alopexmm/shiny-server
```
