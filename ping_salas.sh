#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
bold='\033[1m'
FILE=~/ScriptPing.txt

while :
do
echo -e "${NC}${bold}Para salir del programa presione ${BLUE}${bold}q."
echo -e "${NC}Por favor seleccione a que sala quiere hacer ping."
echo -e "${NC}${bold}Sala A${NC}, teclee la tecla ${BLUE}${bold}1."
echo -e "${NC}${bold}Sala E${NC}, teclee la tecla ${BLUE}${bold}2."
echo -e "${NC}${bold}Sala F${NC}, teclee la tecla ${BLUE}${bold}3"
echo -e "${NC}${bold}Sala LAMEC${NC}, teclee la tecla ${BLUE}${bold}4."
read re

if [ $re = "1" ]
then
	echo -e "${NC}Haz introducido la opcion 1. ${BLUE}Sala A.${NC}"
	echo -e "${bold}Por favor espere mientras se prueban las conexiones...${NC}"
	echo -e "${BLUE}Ping a maquinas de Sala A" > ${FILE}
	echo -e "${BLUE}Maquina\t\tDireccion IP\t\tConexion" >> ${FILE}
	for ip in {2..26}
		do
		if ping -c 1 159.90.9.$ip > /dev/null
		then
			echo -e "${NC}${bold}a$(expr $ip - 1)${NC}\t\t159.90.9.$ip\t\t${GREEN}Exitosa"  >> ${FILE}
		else
			echo -e "${NC}a$(expr $ip - 1)\t\t159.90.9.$ip\t\t${RED}Fallida" >> ${FILE}
		fi
	done
	cat ${FILE}
elif [ $re = "2" ]
then
	echo -e "${NC}Haz introducido la opcion 2. ${BLUE}Sala E.${NC}"
	echo -e "${bold}Por favor espere mientras se prueban las conexiones...${NC}"
	echo -e ${BLUE}Ping a maquinas de Sala E > ${FILE}
	echo -e "${BLUE}Maquina\t\tDireccion IP\t\tConexion" >> ${FILE}
	for ip in {27..51}
		do
		if ping -c 1 159.90.9.$ip > /dev/null
		then
			echo -e "${NC}${bold}e$(expr $ip - 26)${NC}\t\t159.90.9.$ip\t\t${GREEN}Exitosa"  >> ${FILE}
		else
			echo -e "${NC}e$(expr $ip - 26)\t\t159.90.9.$ip\t\t${RED}Fallida" >> ${FILE}
		fi
	done
	cat ${FILE}
elif [ $re = "3" ]
then
	echo -e "${NC}Haz introducido la opcion 3. ${BLUE}Sala F.${NC}"
	echo -e "${bold}Por favor espere mientras se prueban las conexiones...${NC}"
	echo -e ${BLUE}Ping a maquinas de Sala F > ${FILE}
	echo -e "${BLUE}Maquina\t\tDireccion IP\t\tConexion" >> ${FILE}
	for ip in {52..76}
		do
		if ping -c 1 159.90.9.$ip > /dev/null
		then
			echo -e "${NC}${bold}f$(expr $ip - 51)${NC}\t\t159.90.9.$ip\t\t${GREEN}Exitosa"  >> ${FILE}
		else
			echo -e "${NC}f$(expr $ip - 51)\t\t159.90.9.$ip\t\t${RED}Fallida" >> ${FILE}
		fi
	done
	cat ${FILE}
elif [ $re = "4" ]
then
	echo -e "${NC}Haz introducido la opcion 4. ${BLUE}Sala LAMEC.${NC}"
	echo -e "${bold}Por favor espere mientras se prueban las conexiones...${NC}"
	echo -e ${BLUE}Ping a maquinas de Sala LAMEC > ${FILE}
	echo -e "${BLUE}Maquina\t\tDireccion IP\t\tConexion" >> ${FILE}
	for ip in {167..197}
		do
		if ping -c 1 159.90.9.$ip > /dev/null
		then
			echo -e "${NC}${bold}lamec$(expr $ip - 166)${NC}\t\t159.90.9.$ip\t\t${GREEN}Exitosa"  >> ${FILE}
		else
			echo -e "${NC}lamec$(expr $ip - 166)\t\t159.90.9.$ip\t\t${RED}Fallida" >> ${FILE}
		fi
	done
	cat ${FILE}
elif [ $re = "q" ]
then
	echo -e "${GREEN}${bold}Ha salido del script."
	break
else
	echo -e "${RED}${bold}Opcion invalida.\n"
	continue
fi
echo -e "${NC}El log se ha guardado en: ${BLUE}${bold}${FILE}${NC}\n"
done
