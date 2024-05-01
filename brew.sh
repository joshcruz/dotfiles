#!/bin/bash

# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install packages

taps=(
    hashicorp/tap
)

brew tap "${taps[@]}"

apps=(
    aws-nuke
    awscli
    coreutils
    docker
    git
    go
    helm
    hstr
    htop
    jq
    k3d
    kind
    kubernetes-cli
    pyenv
    python
    python3
    minikube
    node
    p7zip
    pulumi
    ruby
    ssh-copy-id
    tmux
    vim
    tree
    wget
    hashicorp/tap/terraform
)

brew install "${apps[@]}"

cask=(
    alfred
    appcleaner
    bruno
    docker
    flux
    fork
    google-chrome
    notion
    rectangle
    slack
    spotify
    vagrant
    virtualbox
    visual-studio-code
)

brew install --cask "${cask[@]}"
