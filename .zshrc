#installed antigen with homebrew
source /usr/local/share/antigen/antigen.zsh

antigen bundle mafredri/zsh-async
antigen bundle git
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export PATH=/usr/local/git/bin:/usr/local/bin:$PATH:/usr/local/sbin:usr/sbin:/sbins:/opt/X11/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=~/bin:$PATH

#terminal color
#source $HOME/.dotfiles/base16-default-dark.sh

#vars
HISTFILE=$HOME/.zhistory # where the file will be saved
HISTSIZE=1000 # the size in bytes it can grow up to
SAVEHIST=1000 # thr maximum number of commands to save I guess

export ERL_AFLAGS="-kernel shell_history enabled"

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}
