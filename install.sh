#!/bin/bash

# ---------------[ Apple Mac Plymouth Installation ]--------------
# -------------------------[version 1]------------------------
# ------------[ Created by Navis Michael Bearly ]------------
# ------------------[ michael.bearly@gmail.com ]------------------

Text='\033[1;32m'
NC='\033[0m'

if ((${EUID:-0} || "$(id -u)")); then
  clear
  sleep 1.5
  	echo -e "${NC}Porra irmão inicia como root ai"
  sleep 1.0
  	echo "Anda feio usa root ./install.sh ai corno"
  sleep 1.0
  	echo -e "${Text}Cancelando porque o cara é burro mesmo mds feio"
  sleep 1.5
  exit 1
else
  clear
  sleep 1.5
  	echo -e "${Text}Ai troxa, espera a porra instalar pra vc imbecil!"
  sleep 1.5
  	echo -e "${NC}Aviso ai troxa, to copiando os arquivos para a pasta /usr/share/plymouth/themes/"
  	cp -iRv meu-icone-plymouth /usr/share/plymouth/themes/
  sleep 1.5
  clear
  	echo -e "${Text}Cara, não faz mais nada, espera esta porra terminar sozinha"
  	echo -e "${NC}Configurando seu tema hackudao, espera ai ta quase feio"
  sleep 1.5
  	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/meu-icone-plymouth/meu-icone-plymouth.plymouth 100
  	
  	echo -e "${Text}Aewwwww porra, so selecionar seu logotipo novo agora nos menus abaixo com o numero pertinente a ele, agradeça ao @GorpoOrko por este script"
  sleep 1.5
  clear
  	echo "Selecione o seu novo logo ou retorne para a logo anterior, se precisar voltar no seu antigo logo ou quiser por um novo vem aqui de novo talkei corno"
  sleep 1.0
    echo -e "${NC} "
  	update-alternatives --config default.plymouth
  	update-initramfs -u
  sleep 0.5
  	echo "Finish"
  sleep 1.5
  clear
fi
