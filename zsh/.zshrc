
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# files to source in priority
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle archlinux
antigen bundle git
antigen bundle command-not-found
antigen bundle autojump
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa t450s_id_rsa
antigen bundle ssh-agent

# zsh-users extras
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-autosuggestions

# Pure prompt
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Antigen done
antigen apply

#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
#source /bin/virtualenvwrapper.sh

export IDEA_JDK=/usr/lib/jvm/java-8-openjdk-jetbrains
export PHPSTORM_JDK=/usr/lib/jvm/java-8-openjdk-jetbrains

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

