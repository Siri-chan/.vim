#!/usr/bin/pwsh
If ((Get-WMIObject win32_operatingsystem).name | Select-String -Pattern "windows")
{
        $WIN=1
} Else {
        $WIN=0
}
cd ~ #powershell treats ~ as $env:USERPROFILE on win and $env:HOME on unix
ni ~/.vimrc
If ($WIN -eq 1) {
        echo "source $env:USERPROFILE/.vim/.vimrc" > ~/.vimrc
} Else {
        echo "source ~/.vim/.vimrc" > ~/.vimrc
}
if (!(Get-Command node)) {
        echo "Node isn't installed. Because Powershell is Powershell, please install it manually at https://nodejs.org/en/download/ or use a different script"
        exit
}
if (!(Get-Command git)) {
        echo "Git isn't installed. Because Powershell is Powershell, please install it manually at https://nodejs.org/en/download/ or use a different script"
        exit
}
Start-Process -FilePath "git" -ArgumentList "clone", "https://github.com/Siri-chan/.vim --recursive" -Wait
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/.vim/plug.vim -Force
If (Get-Command nvim) {
        If ($WIN -eq 1) {
                echo "set runtimepath^=$env:USERPROFILE/.vim runtimepath+=$env:USERPROFILE/.vim/after" > ~/AppData/Local/nvim/init.vim
                echo "let &packpath=&runtimepath" >> ~/AppData/Local/nvim/init.vim
                echo "source $env:USERPROFILE/.vimrc" >> ~/AppData/Local/nvim/init.vim
        } Else {
                echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" > ~/AppData/Local/nvim/init.vim
                echo "let &packpath=&runtimepath" >> ~/AppData/Local/nvim/init.vim
                echo "source ~/.vimrc" >> ~/AppData/Local/nvim/init.vim :
        }
        nvim +'PlugInstall --sync' +'CocInstall ' +qa
} Else {
        vim +'PlugInstall --sync' +'CocInstall ' +qa
}
