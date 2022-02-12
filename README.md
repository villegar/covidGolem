
## Hello!

Welcome to covidGolem.

This project started out as my exploration on the differences of writing
a native Shiny app versus a golem Shiny app. However, also it serves the
dual purpose of allowing the user to track the ongoing COVID-19 pandemic
in the United States.

Now that the base app is completed, the rest of my team at Ge Lab are
using the app as an exercise in working collaboratively on GitHub.

*Note: This app was created as part of my work as a graduate research
assistant at South Dakota State University.*

## Deploy using Docker

1.  Download the image and create a new container

``` bash
sudo docker pull villegar/covid_golem
sudo docker run --rm -p 3838:3838 villegar/covid_golem
```

2.  Open a web browser <http://127.0.0.1:38383>
