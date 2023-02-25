#!/bin/bash
ONE=14d

Fourteendaysold=$(date -d "$date -14 days" +"%Y%m%d")
#Fourteendaysold=`date -d "$dataset_date - $ONE days" +%F`
echo $Fourteendaysold

TWO=7d
sevendaysold=$(date -d "$date -7 days" +"%Y%m%d")
#sevendaysold=`date -d "$dataset_date - $TWO days" +%F`
echo $sevendaysold
#date1=`echo $sevendaysold | sed 's/-//g’`
#date2=`echo $Fourteendaysold | sed 's/-//g'`
echo $Fourteendaysold and $sevendaysold are obtained 

