#!/bin/bash

COLOR='\033[0;36m'
bold='\033[1m'
NC='\033[0m'

clear
echo -e ${COLOR}'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		  -`
		 .o+`
		`ooo/		  _____ _                  
	       `+oooo:		 / ____| |                 
              `+oooooo:		| |    | | ___  __ _ _ __  
	      -+oooooo+:	| |    | |/ _ \/ _` | '\''_ \ 
	    `/:-:++oooo+:	| |____| |  __/ (_| | | | |
	   `/++++/+++++++:	 \_____|_|\___|\__,_|_| |_|
	  `/++++++++++++++:
	 `/+++ooooooooooooo/`				   _     
	./ooosssso++osssssso+`		    /\            | |    
       .oossssso-````/ossssss+`		   /  \   _ __ ___| |__  
      -osssssso.      :ssssssso.	  / /\ \ | '\''__/ __| '\''_ \ 
     :osssssss/        osssso+++.	 / ____ \| | | (__| | | |
    /ossssssss/        +ssssooo/-	/_/    \_\_|  \___|_| |_|
  `/ossssso+/:-        -:/+osssso+-
 `+sso+:-`                 `.-/+oso:	By: Manuel Escalante.
`++:.                           `-/+/
.`                                 `
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'${NC}

#sleep 3
#clear

#while :
#do
echo -e "El espacio utilizado actualmente por los paquetes de pacman es `du -sh /var/cache/pacman/pkg | sed -n `"
