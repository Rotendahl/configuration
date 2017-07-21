################################################################################
####################### Bad-ass oh-my-zsh config file! #########################
################################################################################


################################################################################
######################### Add all the Paths! ###################################
################################################################################
export ZSH=$HOME/.oh-my-zsh
export PATH=/usr/local/texlive/2016/bin/universal-darwin:$PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=/Users/rotendahl/Documents/Projects/Scripts:$PATH
export PATH=/usr/local/bin:$PATH
################################################################################
######################### Add all the Plugins! #################################
################################################################################
plugins=(
        brew cabal django git osx extract web-search wd git-extras 
        zsh-syntax-highlighting
        common-aliases)


    ######################## Config the plugins! ###############################
    
    # Gets brew autocompletions
    fpath=(/usr/local/share/zsh/site-functions $fpath)
    rm -f ~/.zcompdump 

################################################################################
########################### Visual settings ####################################
################################################################################
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_SYMBOL="➔ "


COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
DEFAULT_USER="rotendahl"


fortune -os | cowsay | lolcat # Greeting
################################################################################
############################ Basic settings ####################################
################################################################################
# Unicode
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

################################################################################
############################# Aliases ##########################################
################################################################################
alias goodnight='sudo shutdown -h +60 ; echo "\nNight night buddy"'
alias runServer='open http://localhost:8000 ; python -m SimpleHTTPServer'
alias kaffe='caffeinate -d -t 3600 &'
alias vejr='curl wttr.in/Copenhagen'
alias zshrc='vi /Users/rotendahl/.zshrc'
alias gitTree='git log --graph --full-history --all --color'
eval "$(thefuck --alias)"
################################################################################
########################## Activate settings ###################################
################################################################################

source $ZSH/oh-my-zsh.sh
