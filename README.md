# Course-R
Normalmente vamos a trabajar con datos numéricos, así que vemos a necesitar algunos recursos o prerrequisitos para poder defendernos ágilmente.

## Prerrequisitos

* Descargar e instalar R v3.4.4 desde https://cran.r-project.org/src/base/R-3/
  ```bash
  ~$ sudo apt-get install -y build-essential \
                          fort77 \
                          xorg-dev \
                          liblzma-dev \
                          libblas-dev gfortran \
                          gcc-multilib \
                          gobjc++ \
                          aptitude \
                          libbz2-dev \
                          pcre2-utils \
                          libpcre3-dev \
                          libcurl4 \
                          libcurl4-gnutls-dev \
                          texinfo \
                          texlive \
                          texlive-fonts-extra \
                          libxml2-dev \
                          libssl-dev \
                          libcurl4-openssl-dev
  ~$ sudo aptitude install libreadline-dev
  ~$ cd /home/jdg/git/Course-R/R-3.4.4
  ~$ ./configure --enable-R-shlib
  ~$ sudo make
  ~$ sudo make install
  ```
* Descargar RStudio desde https://rstudio.com/products/rstudio/download/#download (RStudio 1.2.5019 - Ubuntu 18/Debian 10 (64-bit))
  ```bash
  sudo apt install gdebi-core
  ~$ cd ~/Descargas/
  ~$ sudo gdebi rstudio-1.2.5019-amd64.deb
  ```

## Instalación de Tidyverse en RStudio

1. Desde la consola de RStudio ejecutar el siguiente comando:
  ```R
  > install.packages("tidyverse")
  Installing package into ‘/home/jdg/R/x86_64-pc-linux-gnu-library/3.6’
  (as ‘lib’ is unspecified)
  also installing the dependencies ‘openssl’, ‘httr’, ‘rvest’, ‘xml2’

  probando la URL 'https://cloud.r-project.org/src/contrib/openssl_1.4.1.tar.gz'
  Content type 'application/x-gzip' length 1206885 bytes (1.2 MB)
  ==================================================
  downloaded 1.2 MB

  probando la URL 'https://cloud.r-project.org/src/contrib/httr_1.4.1.tar.gz'
  Content type 'application/x-gzip' length 158465 bytes (154 KB)
  ==================================================
  downloaded 154 KB
  .
  .
  .
  ** testing if installed package can be loaded from temporary location
  ** testing if installed package can be loaded from final location
  ** testing if installed package keeps a record of temporary installation path
  * DONE (tidyverse)

  The downloaded source packages are in
  	‘/tmp/RtmpioQ4Mg/downloaded_packages’
  ```

2. Para asegurarnos de que se ha instalado correctamente ejecutamos el siguiente comando en la consola de RStudio, que cargará la librería `tidyverse`:
  ```R
  > library(tidyverse)
  ── Attaching packages ───────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──
  ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
  ✔ tibble  2.1.3     ✔ dplyr   0.8.3
  ✔ tidyr   1.0.0     ✔ stringr 1.4.0
  ✔ readr   1.3.1     ✔ forcats 0.4.0
  ── Conflicts ──────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
  ✖ dplyr::filter() masks stats::filter()
  ✖ dplyr::lag()    masks stats::lag()
  ```

3. Para mantener siempre actualizados los paquetes que utiliza `tidyverse` hay que ejecutar el siguiente comando en la consola de RStudio:
  ```R
  > tidyverse_update()
  All tidyverse packages up-to-date
  ```

## Cargar algunos datos en local

Para poder comenzar a hacer análisis de datos vamos a instalar los siguientes paquetes de datos:

```R
> install.package(c("gapminder", "nycflights13", "Lahman"))
```
