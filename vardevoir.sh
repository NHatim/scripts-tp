#!bin/bash
path="$1"
echo $path
ls -l $path
echo Veuillez inserez un des noms de repertoire en haut autre que \.\/ et \.\.\/
read var
cd $var
pathname=`pwd`
echo $pathname
proprio=`ls -l ${pathname}  | awk '{print $3}'`
echo Le proprietaire de $pathname est $proprio
groupe=`ls -l ${pathname} | awk '{ print $4 }'`
echo Il appartient au groupe de $groupe
ls -al ${pathname} | wc -l