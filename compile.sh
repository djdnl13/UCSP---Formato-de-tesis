#!/bin/csh

set intexfile   = Tesis    # intexfile

rm $intexfile.ps $intexfile.dvi $intexfile.aux $intexfile.log

latex $intexfile
latex $intexfile

dvips $intexfile.dvi -o
ps2pdf $intexfile.ps $intexfile.pdf
rm $intexfile.dvi $intexfile.aux $intexfile.log
