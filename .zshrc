# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$PATH:/usr/local/bin
# Handle Mac Platforms
CPU=$(uname -p)
HOST_CPU=CPU
if [[ "$CPU" == "arm" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
    export EDITOR=/opt/homebrew/bin/nvim
    alias nano=/opt/homebrew/bin/nano
    alias oldbrew=/usr/local/homebrew/bin/brew
    alias brew=/opt/homebrew/bin/brew
    export HOMEBREW_ROOT="/opt/homebrew"
else
    export PATH="/usr/local/homebrew/bin:$PATH"
    export EDITOR=/usr/local/bin/nano
    alias nano=/usr/local/bin/nano
    alias brew=/usr/local/homebrew/bin/brew
    export HOMEBREW_ROOT="/usr/local/homebrew"
fi

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    dotenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/shims:${PATH} && \
  eval "$(rbenv init -)"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias python=/usr/bin/python3 before installig pyenv.
#alias python2=/usr/bin/python2.7
alias python2=/usr/bin/python
alias python=/opt/homebrew/bin/python3

# ==> Downloading https://homebrew.bintray.com/bottles/autojump-22.5.3.catalina.bottle.tar.gz
# ######################################################################## 100.0%
# ==> Pouring autojump-22.5.3.catalina.bottle.tar.gz
# ==> Caveats
# Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember
# to source the file to update your current session):
  [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
#export PATH="/usr/local/sbin:$PATH"
# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
#export PYENV_ROOT=/usr/local/var/pyenv
# Due to change my machine for m1 mini, change to official setting.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# pyenvさんに自動補完機能を提供してもらう
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# for go-pls
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#export PATH="/opt/homebrew/opt/bzip2/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH_FOR_CHROME_DRIVER=/opt/homebrew/Caskroom/chromedriver/109.0.5414.74/chromedriver
export PATH_FOR_CHROME_DRIVER=/opt/homebrew/Caskroom/chromedriver/127.0.6533.99/chromedriver-mac-arm64/chromedriver


#xattr -d com.apple.quarantine chromedriver
export CHROMEDRIVER_FOR_BRAVE=~/Downloads/chromedriver
#export PATH=~/.nvm/versions/node/v16.5.0/bin:/opt/homebrew/opt/bzip2/bin:~/.pyenv/bin:~/.rbenv/bin:/opt/homebrew/bin:~/.nvm/versions/node/v16.5.0/bin:/opt/homebrew/opt/bzip2/bin:~/.pyenv/bin:~/.rbenv/bin:/opt/homebrew/bin:~/.pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Apple/usr/bin:~/.nvm/versions/node/v16.5.0/bin:/opt/homebrew/opt/bzip2/bin:~/.pyenv/bin:~/.rbenv/bin:/opt/homebrew/bin:~/.cargo/bin:~/go/bin:~/go/bin:~/go/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/
#export LDFLAGS=-L/opt/homebrew/opt/llvm/lib:/opt/homebrew/opt/zlib/lib:/opt/homebrew/opt/binutils/lib
#export CPPFLAGS=-I/opt/homebrew/opt/llvm/include:/opt/homebrew/opt/zlib/include:/opt/homebrew/opt/binutils/include
#export CFLAGS=-I/opt/homebrew/include/SDL2/
#export SDL2_HEADER="-I/opt/homebrew/include/SDL2/ -D_THREAD_SAFE"
export SDL2_HEADER="-I/opt/homebrew/include/SDL2/ -D_THREAD_SAFE"
export SDL2_LIB="-L/opt/homebrew/lib/ -lSDL2"
#export SDL2_LIB="-L/opt/homebrew/lib/ /opt/homebrew/lib/libSDL2.a -lm -liconv -Wl,-framework,CoreAudio -Wl,-framework,AudioToolbox -Wl,-weak_framework,CoreHaptics -Wl,-weak_framework,GameController -Wl,-framework,ForceFeedback -lobjc -Wl,-framework,CoreVideo -Wl,-framework,Cocoa -Wl,-framework,Carbon -Wl,-framework,IOKit -Wl,-weak_framework,QuartzCore -Wl,-weak_framework,Metal"
alias luamake=~/lua-settings/lua-language-server/3rd/luamake/luamake
#export PATH=~/.nvm/versions/node/v16.5.0/bin:/opt/homebrew/opt/bzip2/bin:~/.pyenv/bin:~/.rbenv/bin:/opt/homebrew/bin:~/.nvm/versions/node/v16.5.0/bin:/opt/homebrew/opt/bzip2/bin:~/.pyenv/bin:~/.rbenv/bin:/opt/homebrew/bin:~/.pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Apple/usr/bin:~/.nvm/versions/node/v16.5.0/bin:/opt/homebrew/opt/bzip2/bin:~/.pyenv/bin:~/.rbenv/bin:/opt/homebrew/bin:~/.cargo/bin:~/go/bin:~/go/bin:~/go/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/:~/lua-settings/:/bin/macOS/
export MAGICK_HOME=~/ImageMagick-7.1.0
export PATH="$PATH:/opt/homebrew/sbin"
export CPLUS_INCLUDE_PATH="/usr/local/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$HOME/cpp_projects/opencv_contrib/build/"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$HOME/cpp_projects/opencv/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$HOME/cpp_projects/opencv/modules"
export PATH="$PATH:$HOME/cpp_projects/gn"
export PATH="$PATH:~/cpp_projects/depot_tools"
#export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$HOME/cpp_projects/chromium/src"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"
export PATH="/usr/local/smlnj/bin:$PATH"
export PATH="$PATH:~/lua-settings/lua-language-server/bin/macOS"
#export PATH="$PATH:/opt/hombrew/bin/python3"
export SDKROOT="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
export XML_CATALOG_FILES="/opt/homebrew/etc/xml/catalog"

# opam configuration
[[ ! -r ~/.opam/opam-init/init.zsh ]] || source ~/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
alias gcc='/opt/homebrew/bin/gcc-<->'
alias g++='/opt/homebrew/bin/g++-<->'


[ -f "~/.ghcup/env" ] && . "~/.ghcup/env" # ghcup-env

# 2024 09/29
# To activate these completions, add the following to your .zshrc:

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

#To activate the autosuggestions, add the following at the end of your .zshrc:

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#To activate the zsh vi mode, add the following line to your .zshrc: uzakatta
#source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
export PATH="$PATH:~/coding_rust/git-cinnabar"
#export TERM=xterm-256color
export TERM=screen-256color


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('~/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "~/miniforge3/etc/profile.d/conda.sh" ]; then
#         . "~/miniforge3/etc/profile.d/conda.sh"
#     else
#         export PATH="~/miniforge3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='~/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='~/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
# opencode
export PATH="$HOME/.opencode/bin:$PATH"
# claude code
export PATH="$HOME/.local/bin:$PATH"

#
#autoload -U select-word-style
#select-word-style space
# 1. Use the 'Unix' rubout widget. 
# This is the gold standard for "Kill until space" across all Linux/Mac shells.
# It is specifically designed to be "Yank-friendly."
#zle -N backward-kill-word-match backward-kill-word-match
bindkey '^W' backward-kill-word

# 2. Tell Zsh that "Word characters" are everything EXCEPT space.
# By making this empty, Zsh treats punctuation (./-_) as part of the word.
export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'

# 3. Ensure the widget doesn't grab the space BEFORE the word.
zstyle ':zle:*' word-style space
zstyle ':zle:*' skip-whitespace-first true

# deduplicate in zsh.
typeset -U fpath

