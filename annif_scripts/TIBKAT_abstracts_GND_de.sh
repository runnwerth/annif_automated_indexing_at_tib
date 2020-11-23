#!/bin/bash
 
annif_project="TIBKAT_abstracts_GND_de_OP"

#Load vocabulary BK
echo "Start loading vocabulary BK"
annif loadvoc $annif_project vocab/bk.tsv
echo "Vocabulary BK loaded"
 
#Train loaded vocabulary
echo "Start training of FTX"
annif train $annif_project training/TIBIndex/TIBKAT_BK_de_202011/
echo "Vocabulary BK trained"
 
#Evaluate against gold standard
annif eval $annif_project goldstandard/TIBIndex/TIBKAT_BK_de_202011/

#Run Web GUI
echo "Start Web GUI"
annif run