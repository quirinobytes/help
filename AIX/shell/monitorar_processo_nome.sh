#!/bin/ksh



if [ -z "$1" ] ; then
	while (true) do ps vw `ps auxw | grep a.out | awk '{print $2}'` ; sleep 1 ; done
else
	while (true) do ps vw `ps auxw | grep "$1"  | awk '{if ( $1 ~ "raquica" ) print $2}'` ; sleep 1 ; done
fi
