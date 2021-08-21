FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV ENV TZ=America/Argentina/Buenos_Aires
RUN apt update && \ 
apt install r-base -y && \
apt install gdebi-core wget -y && \
R -e "install.packages('shiny', repos='https://cran.rstudio.com/')" && \
wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.16.958-amd64.deb && \
gdebi -n shiny-server-1.5.16.958-amd64.deb
ENTRYPOINT ["shiny-server"]
