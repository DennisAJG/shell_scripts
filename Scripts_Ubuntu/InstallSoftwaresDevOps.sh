#!/bin/bash
#########################################
#
# InstallSoftwareDevOps.sh - Script Softwares DevOps 
# Autor: Dennis Augusto (dennis.gusmao@outlook.com)
# Data Criação:  07/10/2024
# Descrição: Script que instala softwares utilitarios para DevOps 
# Exemplo de uso: ./InstallSoftwaresDevOps.sh 
# Versão: 1.0.0
# Alterações:
#   1 - Elaborando o script 
#########################################

clear 
echo " ========= Install Softwares DevOps ========== "
echo ""
echo " Informe o valor conforme a lista abaixo: "
echo " 1 - Update & Upgrade ubuntu "
echo " 2 - Install vim "
echo " 3 - Install Flameshot (software para print de tela) "
echo " 4 - Install Docker & Docker-compose "
echo " 5 - Install Postgressql "
echo " 6 - Install AWS-CLI "
echo " 7 - Install terraform "
echo " 8 - Install Ansible "
echo " 9 - Install VsCode "
echo " 10 - Install google chrome "
echo " 11 - Install terminal tilix "
echo " 12 - Install zsh & Oh-my-zsh "
echo " 13 - Install python & Pyenv "
echo " 14 - Install kubectl & kind "
echo " 15 - Install All "
echo ""
read -p "informe o valor: " VAR1
echo ""
case $VAR1 in 
    0)
        echo "O valor 0 é invalido"
    ;;
    1)
        echo "Atualizando os pacotes e fazendo o Upgrade..."
        sudo apt-get update -y && sudo apt dist-upgrade -y
        sleep 3
    ;;
    2)
        echo "Instalando o Vim..."
        sudo apt install -y vim 
        sleep 3
    ;;
    3)
        echo "Instalando o Flameshot..."
        sudo apt install -y flameshot
        sleep 3
    ;;
    4) 
        echo "Instalando o Docker-ce..."
        sudo apt install apt-transport-https ca-certificates curl software-properties-common
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
        sudo apt install docker-ce -y
        sudo usermod -aG docker ${USER}
        sleep 3
        echo ""
        echo "Instalando agora o docker-compose..."
        mkdir -p ~/.docker/cli-plugins/
        curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
        chmod +x ~/.docker/cli-plugins/docker-compose
        docker compose version
        sleep 3
    ;;
    5)
        echo "Instalando o Postgres e PgAdmin..."
        curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
        sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
        sudo apt install pgadmin4
        sudo /usr/pgadmin4/bin/setup-web.sh
        sleep 3
    ;;
    6)
        echo "Instalando a AWS-CLI..."
        echo ""
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        echo ""
        echo "Versão AWS-CLI" 
        aws --version
        sleep 3
    ;;
    7)
        echo "Instalando o terraform..."
        echo ""
        sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
        wget -O- https://apt.releases.hashicorp.com/gpg | \
        gpg --dearmor | \
        sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
        gpg --no-default-keyring \
        --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
        --fingerprint
        echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
        https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
        sudo tee /etc/apt/sources.list.d/hashicorp.list
        sudo apt update
        sudo apt-get install -y terraform
        echo ""
        echo "Versão do terraform:"
        terraform --version
        echo ""
        sleep 3
    ;;
    8)
        echo "Instalando o Ansible..."
        echo ""
        sudo apt update
        sudo apt install software-properties-common
        sudo add-apt-repository --yes --update ppa:ansible/ansible
        sudo apt install -y ansible
        echo ""
        ansible --version
        echo ""
        sleep 3
    ;;
    9) 
        echo "Instalando o VsCode..."
        echo ""
        sudo apt install software-properties-common apt-transport-https wget -y
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg
        echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
        sudo apt update
        sudo apt install code -y
        echo  ""
        sleep 3
    ;;
    10)
        echo  "Instalando o google chrome..."
        echo ""
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
        echo ""
        sleep 3
    ;;
    11)
        echo "Instalando o terminal tilix..."
        echo ""
        sudo apt install -y tilix
        echo ""
        sleep 3
    ;;
    12)
        echo "Instalando o zsh & Oh-my-zsh..."
        echo  "OBS: É NECESSÁRIO VOCÊ CONFIGURAR O ~/.zshrc -> ZSH_THEME="spaceship APÓS A INSTALAÇÃO""
        sudo apt update -y
        sudo apt upgrade -y
        sudo apt install zsh -y
        chsh -s /bin/zsh
        echo ""
        sleep 3
        echo " instalando o Oh-my-zsh..."
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        echo  ""
        echo "Configurando o Spaceshipt Promt"
        git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 
        ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
        echo  "Mudar ~/.zshrc -> ZSH_THEME="spaceship""
    ;;
    13)
        echo "Instalando o Python e Pyenv..."
        sudo apt install python3.10-full python3.10-dev -y
        sudo apt install git curl build-essential dkms perl wget -y
        sudo apt install gcc make default-libmysqlclient-dev libssl-dev -y
        sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
        libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python3-openssl 
        echo ""
        echo "Instalando o Pyenv..."
        echo ""
        curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
        export PYENV_ROOT="$HOME/.pyenv"
     ;;
     14)
        echo  "Instalando o kubectl & Kind..."
        echo ""
        echo "Instalando o kubectl..."
        curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
        sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
        chmod +x kubectl
        mkdir -p ~/.local/bin
        mv ./kubectl ~/.local/bin/kubectl
        echo ""
        echo "Versão do kubectl"
        kubectl version --client
        echo ""
        sleep 3
        echo "Instalando o kind..."
        echo ""
        [ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
        chmod +x ./kind
        sudo mv ./kind /usr/local/bin/kind
        echo  "Criando um cluster kind-2"
        kind create cluster --name kind-2 
        echo ""
        sleep 3
    ;;
    15)
        echo "INSTALANDO TODOS OS SOFTWARES..."
        echo "================================"
        echo ""
        echo "Atualizando os pacotes e fazendo o Upgrade..."
        sudo apt-get update -y && sudo apt dist-upgrade -y
        sleep 3
        echo “”
        echo "Instalando o Vim..."
        sudo apt install -y vim 
        sleep 3
        echo “”
        echo "Instalando o Flameshot..."
        sudo apt install -y flameshot
        sleep 3
        echo “”
        echo "Instalando o Docker-ce..."
        sudo apt install apt-transport-https ca-certificates curl software-properties-common
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
        sudo apt install docker-ce -y
        sudo usermod -aG docker ${USER}
        sleep 3
        echo ""
        echo "Instalando agora o docker-compose..."
        mkdir -p ~/.docker/cli-plugins/
        curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
        chmod +x ~/.docker/cli-plugins/docker-compose
        docker compose version
        sleep 3
        echo “”
        echo "Instalando o Postgres e PgAdmin..."
        curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
        sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
        sudo apt install pgadmin4
        sudo /usr/pgadmin4/bin/setup-web.sh
        sleep 3
        echo “”
        echo "Instalando a AWS-CLI..."
        echo ""
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        echo ""
        echo "Versão AWS-CLI" 
        aws --version
        sleep 3
        echo “”
        echo "Instalando o terraform..."
        echo ""
        sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
        wget -O- https://apt.releases.hashicorp.com/gpg | \
        gpg --dearmor | \
        sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
        gpg --no-default-keyring \
        --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
        --fingerprint
        echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
        https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
        sudo tee /etc/apt/sources.list.d/hashicorp.list
        sudo apt update
        sudo apt-get install -y terraform
        echo ""
        echo "Versão do terraform:"
        terraform --version
        echo ""
        sleep 3
        echo “”
        echo "Instalando o Ansible..."
        echo ""
        sudo apt update
        sudo apt install software-properties-common
        sudo add-apt-repository --yes --update ppa:ansible/ansible
        sudo apt install -y ansible
        echo ""
        ansible --version
        echo ""
        sleep 3
        echo “”
        echo "Instalando o VsCode..."
        echo ""
        sudo apt install software-properties-common apt-transport-https wget -y
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg
        echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
        sudo apt update
        sudo apt install code -y
        echo ""
        sleep 3
        echo “”
        echo "Instalando o google chrome..."
        echo ""
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
        echo ""
        sleep 3
        echo “”
        echo "Instalando o terminal tilix..."
        echo ""
        sudo apt install -y tilix
        echo ""
        sleep 3
        echo “”
        echo "Instalando o zsh & Oh-my-zsh..."
        echo "OBS: É NECESSÁRIO VOCÊ CONFIGURAR O ~/.zshrc -> ZSH_THEME="spaceship APÓS A INSTALAÇÃO""
        sudo apt update -y
        sudo apt upgrade -y
        sudo apt install zsh -y
        chsh -s /bin/zsh
        echo ""
        sleep 3
        echo " instalando o Oh-my-zsh..."
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        echo ""
        echo "Configurando o Spaceshipt Promt"
        git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 
        ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
        echo "Mudar ~/.zshrc -> ZSH_THEME="spaceship""
        echo “”
        echo "Instalando o Python e Pyenv..."
        sudo apt install python3.10-full python3.10-dev -y
        sudo apt install git curl build-essential dkms perl wget -y
        sudo apt install gcc make default-libmysqlclient-dev libssl-dev -y
        sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
        libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python3-openssl 
        echo ""
        echo "Instalando o Pyenv..."
        echo ""
        curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
        export PYENV_ROOT="$HOME/.pyenv"
        echo “”
        echo "Instalando o kubectl & Kind..."
        echo ""
        echo "Instalando o kubectl..."
        curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
        sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
        chmod +x kubectl
        mkdir -p ~/.local/bin
        mv ./kubectl ~/.local/bin/kubectl
        echo ""
        echo "Versão do kubectl"
        kubectl version --client
        echo ""
        sleep 3
        echo "Instalando o kind..."
        echo ""
        [ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
        chmod +x ./kind
        sudo mv ./kind /usr/local/bin/kind
        echo "Criando um cluster kind-2"
        kind create cluster --name kind-2 
        echo ""
        sleep 3
        echo “”
    ;;
    *)
        echo "valor invalido."
esac



