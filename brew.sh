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
    ansible
    aws-nuke
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
    yarn
    hashicorp/tap/terraform
)

brew install "${apps[@]}"

cask=(
    alfred
    appcleaner
    bartender
    docker
    firefox
    flux
    google-chrome
    insomnia
    iterm2
    notion
    rectangle
    slack
    spotify
    vagrant
    virtualbox
    visual-studio-code
)

brew install --cask "${cask[@]}"
