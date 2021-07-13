#!/bin/user/env bash

source "$DOTFILES_PATH/symlinks/utils.sh"

install_vscode() {
    if ! platform::command_exists code; then
        if platform::command_exists brew; then
        output::answer "Installing VsCode using brew"
        yes | brew install --cask visual-studio-code
        elif platform::command_exists apt; then
        output::answer "Installing VsCode using apt"
        curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
        sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
        sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
        sudo apt update
        sudo apt -y install code
        elif platform::command_exists dnf; then
        output::answer "Installing VsCode using dnf"
        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        dnf check-update
        sudo dnf install code
        elif platform::command_exists yum; then
        output::answer "Installing VsCode using yum"
        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        yum check-update
        sudo yum install code
        elif platform::command_exists pacman; then
        output::answer "Installing VsCode using pacman"
        sudo yaourt -S visual-studio-code
        fi
    fi

    if platform::command_exists code; then
        echo "✅ installed!"
    fi
}

setup_vscode_settings_file() {
    if platform::is_macos; then
        ensure_if_exists_file ~/Library/Application\ Support/Code/User/settings.json
        ln -s $DOTFILES_PATH/editors/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    elif platform::is_macos; then
        ensure_if_exists_file ~/.config/Code/User/settings.json
        ln -s $DOTFILES_PATH/editors/vscode/settings.json ~/.config/Code/User/settings.json
    elif platform::is_wsl; then
        ensure_if_exists_file $WINHOME/AppData/Roaming/Code/User/settings.json
        ln -s $DOTFILES_PATH/editors/vscode/settings.json $WINHOME/AppData/Roaming/Code/User/settings.json
    fi
}

install_vscode_extensions() {
  if platform::command_exists code; then
    pkglist=(
      codely.codely-theme
      github.github-vscode-theme
      msjsdiag.debugger-for-chrome
      ms-azuretools.vscode-docker
      donjayamanne.githistory
      eamodio.gitlens
      golang.go
      k--kato.intellij-idea-keybindings
      pkief.material-icon-theme
      netcorext.uuid-generator
      redhat.vscode-yaml
      ritwickdey.liveserver
      mikestead.dotenv
      orta.vscode-jest
      rvest.vs-code-prettier-eslint
      quicktype.quicktype
    )

    for i in ${pkglist[@]}; do
      code --install-extension $i
    done

    output::write "✅ Done"
  else
    output::error "You haven't got installed code"
  fi
}

