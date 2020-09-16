#!/bin/bash
####################################################################################################
#																								   #
# author Carlos Alberto<karloswebmaster@gmail.com												   #
#																								   #
# Este programa fará a instalação das configurações para uso no nvim                               #
#																								   #
# Version: 1 Versão inicial                                                                        #
# Version: 2 -> Implementação do download do gerenciado de plugins Vunddle					       #
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
		grep "^# Versio" $0 | tr -d \# | tr -d : | tail -1
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

if [ ! -d ~/.vim/plugged ];
then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -d ~/.config/nvim ];
then
	sudo apt-get install -y neovim
fi

rm -rf ~/.config/nvim/init.vim
ln -S ~/.config/nvim/init.vim ~/.myvimrc/.vimrc

echo -e "Configuração NVIM realizada com sucesso.\n
	Agora abra o seu NVIM e digite no modo normal \033[01;32m:PlugInstall\033[01;37!"

	
rm -rf ~/.vimrc
ln -S ~/.vimrc ~/.myvimrc/.vimrc

echo -e "Configuração VIM realizada com sucesso.\n
	Agora abra o seu VIM e digite no modo normal \033[01;32m:PlugInstall\033[01;37!"

rm -rf ~/.ideavim
ln -S ~/.ideavim ~/.myvimrc/.ideavim

echo -e "Configuração IDEAVIM realizada com sucesso." \n

rm -rf ~/.zshrc
ln -S ~/.zshrc ~/.myvimrc/.zshrc

echo -e "Configuração ZSH realizada com sucesso." \n
