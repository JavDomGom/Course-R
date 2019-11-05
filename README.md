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
                          texlive-fonts-extra
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
