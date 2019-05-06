#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
bold='\033[1m'

while :
do
echo -e "${NC}${bold}Para salir del script presione ${BLUE}${bold}q."
echo -e "${NC}Por favor seleccione a que sala quiere acceder."
echo -e "${NC}${bold}Sala A${NC}, teclee la tecla ${BLUE}${bold}1."
echo -e "${NC}${bold}Sala E${NC}, teclee la tecla ${BLUE}${bold}2."
echo -e "${NC}${bold}Sala F${NC}, teclee la tecla ${BLUE}${bold}3"
echo -e "${NC}${bold}Sala LAMEC${NC}, teclee la tecla ${BLUE}${bold}4."
read re

if [ $re = "1" ]
then
	clear
	echo -e "${NC}Haz introducido la opcion 1. ${BLUE}Sala A.${NC}"
	echo -e "${bold}Por favor introduzca el nombre del usuario al que desea limpiarle el home:${NC}"
	read user
	for ip in {2..26}
	do
		if ping -w 3 -c 1 159.90.9.$ip > /dev/null
		then
		ssh $user@159.90.9.$ip 'ls | grep -v `$(xdg-user-dir DESKTOP) 2>&1 | cut -f 2 -d ":" | cut -f 4 -d "/")` | xargs rm -rf; rm ~/.config/user-dirs*; xdg-user-dirs-update'
	else
		echo -e "Ha ocurrido un error con a$(expr $ip - 1)"
	fi
	done
elif [ $re = "2" ]
then
	clear
	echo -e "${NC}Haz introducido la opcion 2. ${BLUE}Sala E.${NC}"
	echo -e "${bold}Por favor introduzca el nombre del usuario al que desea limpiarle el home:${NC}"
	read user
	for ip in {27..51}
	do
		if ping -w 3 -c 1 159.90.9.$ip > /dev/null
		then
		ssh $user@159.90.9.$ip 'ls | grep -v `$(xdg-user-dir DESKTOP) 2>&1 | cut -f 2 -d ":" | cut -f 4 -d "/")` | xargs rm -rf; rm ~/.config/user-dirs*; xdg-user-dirs-update'
	else
		echo -e "Ha ocurrido un error con a$(expr $ip - 26)"
	fi
	done
elif [ $re = "3" ]
then
	clear
	echo -e "${NC}Haz introducido la opcion 3. ${BLUE}Sala F.${NC}"
	echo -e "${bold}Por favor introduzca el nombre del usuario al que desea limpiarle el home:${NC}"
	read user
	for ip in {52..76}
	do
		if ping -w 3 -c 1 159.90.9.$ip > /dev/null
		then
		ssh $user@159.90.9.$ip 'ls | grep -v `$(xdg-user-dir DESKTOP) 2>&1 | cut -f 2 -d ":" | cut -f 4 -d "/")` | xargs rm -rf; rm ~/.config/user-dirs*; xdg-user-dirs-update'
	else
		echo -e "Ha ocurrido un error con a$(expr $ip - 51)"
	fi
	done
elif [ $re = "4" ]
then
	clear
	echo -e "${NC}Haz introducido la opcion 4. ${BLUE}Sala LAMEC.${NC}"
	echo -e "${bold}Por favor introduzca el nombre del usuario al que desea limpiarle el home:${NC}"
	read user
	for ip in {167..197}
	do
		if ping -w 3 -c 1 159.90.9.$ip > /dev/null
		then
		ssh $user@159.90.9.$ip 'ls | grep -v `$(xdg-user-dir DESKTOP) 2>&1 | cut -f 2 -d ":" | cut -f 4 -d "/")` | xargs rm -rf; rm ~/.config/user-dirs*; xdg-user-dirs-update'
	else
		echo -e "Ha ocurrido un error con a$(expr $ip - 166)"
	fi
	done
elif [ $re = "q" ]
then
	echo -e "${GREEN}${bold}Ha salido del script.${NC}"
	break
else
	echo -e "${RED}${bold}Opcion invalida.\n${NC}"
	continue
fi
done
