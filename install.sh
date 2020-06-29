#!/bin/bash
####################################################################################################
#																								   #
# author Carlos Alberto<karloswebmaster@gmail.com												   #
#																								   #
# Este programa fará a instalação das configurações para uso no nvim                               #
#																								   #
# Version: 1                                                                                       #
#																								   #
####################################################################################################

readonly TEXT_HELP="Uso: $(basename ${0}) [-h | --help]\n\n
	-h --help Mostra esta tela de ajuda\n
	-v --version Mostra a versão da aplicação
"
case "$1" in
	-h | --help)
		echo -e $TEXT_HELP
		exit 0;
		;;
	-v | --version)
		echo -e "\n\n"
		grep "^# Versio" $0 | tr -d \# 
		echo -e "\n\n"
		exit 0;
		;;
	*)
		if test -n "$1"
		then
			echo "Opção inválida."
			exit 1;
		fi
		;;
esac

if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cp -rf init.vim ~/.config/nvim/ 

echo -e "Configuração realizada com sucesso.\n
	Agora abra o seu nvim e digite no modo normal \033[01;32m:PluginInstall\033[01;37!
"
