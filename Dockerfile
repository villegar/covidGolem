FROM rocker/shiny:latest
RUN apt-get update && apt-get install -y apt-utils git-core libcurl4-openssl-dev libgit2-dev libicu-dev libnlopt-dev libssl-dev libxml2-dev make pandoc pandoc-citeproc && rm -rf /var/lib/apt/lists/*
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl', Ncpus = 4)" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN git clone https://github.com/villegar/covidGolem
RUN cd covidGolem 
RUN git checkout group_development
WORKDIR covidGolem
RUN R -e 'remotes::install_local(upgrade="never")'
EXPOSE 3838
CMD R -e "options('shiny.port'=3838, shiny.host='0.0.0.0');covidGolem::run_app()"