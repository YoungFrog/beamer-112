#!/bin/bash

# latexmk -pdf 112-en-beamer-2014-15-handout;
# k=1;
# j=1;
# for i in $(egrep -o "re de cours en page ([0-9]+)" 112-en-beamer-2014-15-handout.log | cut -d\  -f 6 | tail -n +2); do
#     pdfjam --landscape 112-en-beamer-2014-15-handout.pdf $j-$((i-1)) -o slide-cours-$k-handout.pdf;
#     j=$i;
#     let k++;
# done
    
# latexmk -pdf 112-en-beamer-2014-15
# k=1;
# j=1;
# for i in $(egrep -o "re de cours en page ([0-9]+)" 112-en-beamer-2014-15.log | cut -d\  -f 6 | tail -n +2); do
#     pdfjam --landscape 112-en-beamer-2014-15.pdf $j-$((i-1)) -o slide-cours-$k.pdf;
#     j=$i;
#     let k++;
# done

latexmk -pdf -jobname="slide-cours-$1-handout" -pdflatex="pdflatex %O '\PassOptionsToClass{handout}{beamer}\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-2014-15.tex
latexmk -pdf -jobname="slide-cours-$1" -pdflatex="pdflatex %O '\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-2014-15.tex

rsync -tv slide-cours-*pdf ulb-perso:public_html/Math-F-112/
