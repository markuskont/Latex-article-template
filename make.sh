#!/bin/bash

NAME="paper"
TEXFILE="$NAME.tex"
LATEX=`which latex`
BIBTEX=`which bibtex8`

$LATEX --output-format=pdf $TEXFILE
$BIBTEX $NAME
$LATEX --output-format=pdf $TEXFILE
$LATEX --output-format=pdf $TEXFILE
