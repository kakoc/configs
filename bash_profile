txtylw='\e[0;93m' # Yellow

print_before_the_prompt(){
	printf "$txtylw%s\n" "$PWD"
}
PROMPT_COMMAND=print_before_the_prompt

PS1='\[\033[38;5;40m\]➜  \[$(tput sgr0)\]'

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

GIT_PROMPT_THEME=Evermeet

export PATH=/usr/local/Cellar/gcc/7.2.0/bin:homebrew/php/php71:$PATH

s=./study/


# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

alias python='python3'
