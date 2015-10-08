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

if [ "$2" == "" ]; then
    echo "Use 'rc' or 'release' as second arg";
    exit 1;
fi

git commit -m "Auto commit before outputting course $1 ($2)" -- 112-en-beamer-2014-15.tex
set -e


if [ "$2" == "rc" ]; then
    # latexmk -pdf -jobname="slide-cours-$1-handout" -pdflatex="pdflatex %O '\PassOptionsToClass{handout}{beamer}\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-2014-15.tex
    # latexmk -pdf -jobname="slide-cours-$1" -pdflatex="pdflatex %O '\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-2014-15.tex
    latexmk -pdf -jobname="annotations-cours-$1" -pdflatex="pdflatex %O '\PassOptionsToClass{handout}{beamer}\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-pour-annotations.tex
    # mv -vi "slide-cours-$1-handout".pdf "slide-cours-$1".pdf ~/"ownCloud/Cours-ULB/MathF112/public_html/2015-2016/slides"/
    mv -vi "annotations-cours-$1".pdf ~/"ownCloud/Cours-ULB/MathF112/public_html/2015-2016/cours-avec-annotations"/
fi

if [ "$2" == "release" ]; then
    latexmk -pdf -jobname="slide-cours-$1-handout" -pdflatex="pdflatex %O '\PassOptionsToClass{handout}{beamer}\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-2014-15.tex
    latexmk -pdf -jobname="slide-cours-$1" -pdflatex="pdflatex %O '\newcommand\currentcourse{Cours $1}\input{%S}'" 112-en-beamer-2014-15.tex
    mv -vi "slide-cours-$1-handout".pdf "slide-cours-$1".pdf ~/"ownCloud/Cours-ULB/MathF112/public_html/2015-2016/slides"/
fi

# rsync -tv slide-cours-*pdf ulb-perso:/home/youngfrog/sources/Math-F-112/2014-2015/public_html/
