FROM rocker/rstudio

RUN R -e 'install.packages("reactable")'

RUN apt-get update\
 && apt-get install wget
 
RUN mkdir -p /usr/RScript

ENV USER rstudio

COPY RScript/Tier2.R /image_folder

