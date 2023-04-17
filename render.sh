#!/bin/bash
docker build --tag why_bayes .

docker run --rm \
--user $UID:$(id -g) \
-v $(pwd):/tmp/working_dir \
-w /tmp/working_dir \
why_bayes \
R -e "rmarkdown::render('why_bayes.Rmd')"
open why_bayes.html
