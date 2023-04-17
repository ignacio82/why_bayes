FROM rocker/r-ubuntu:20.04
LABEL maintainer="Ignacio Martinez <martinezig@google.com>"

RUN apt-get update -qq \
 && apt-get install -y \
    pandoc \
    r-cran-rmarkdown \
    r-cran-svglite \
    r-cran-dplyr \
    r-cran-ggplot2 \
    r-cran-broom \
    r-cran-rstan \
 && install.r \
  remotes \
  vizdraws \
  xaringanthemer \
  metathis \
 && installGithub.r \
  gadenbuie/xaringanExtra \
  yihui/xaringan



