#!/bin/bash 
GREEN='\e[32m'
NORMAL='\e[0m'
InstallSW(){
    echo -e " => ${GREEN}Add repos${NORMAL}"
    sleep 3
    sudo add-apt-repository ppa:jetbrains-ppa
    sudo apt update 
    sudo add-apt-repository universe
    sudo apt update
    echo -e " => ${GREEN}Install packages${NORMAL}"
    sleep 3
    sudo apt install -y pycharm-community codeblocks qtcreator default-jdk-17 fpc lazarus-ide code wine git 
    sudo snap install eclipse --classic
}
InstallSW2(){
    echo -e " => ${GREEN}Download packages${NORMAL}"
    sleep 3
    wget http://ports.ubuntu.com/pool/universe/g/gcc-mingw-w64/gcc-mingw-w64_13.2.0-6ubuntu1+26.1_all.deb
    wget https://wingware.com/pub/wing-personal/10.0.10.0/wing-personal10_10.0.10-0_amd64.deb
    echo -e " => ${GREEN}Install Wing-GCC${NORMAL}"
    sudo dpkg -i ./wing-personal10_10.0.10-0_amd64.deb
    sudo dpkg -i ./gcc-mingw-w64_13.2.0-6ubuntu1+26.1_all.deb
    echo -e " => ${GREEN}Delete${NORMAL}"
    rm -rf wing-personal10_10.0.10-0_amd64.deb
    rm -rf gcc-mingw-w64_13.2.0-6ubuntu1+26.1_all.deb
}
InstallPlguns(){
    echo -e " => ${GREEN}Install Plguns VSCode${NORMAL}"
    code --install-extension MS-CEINTL.vscode-language-pack-ru ms-vscode.cpptools-extension-pack ms-python.python ms-python.vscode-pylance KevinRose.vsc-python-indent  vscjava.vscode-java-debug  ms-vscode.hexeditor
}
InstallSW
InstallSW2
InstallPlguns
