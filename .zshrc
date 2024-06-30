# Personal Executables
[ -d "$HOME/.bin/" ] && path+=("$HOME/.bin")

# Rust Cargo
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env" # cargo-env

# Haskell GHCup
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Modular Setup
export MODULAR_HOME="$HOME/.modular"
[ -d "$MODULAR_HOME" ] && path+=("$MODULAR_HOME/pkg/packages.modular.com_max/bin")
[ -d "$MODULAR_HOME" ] && path+=("$MODULAR_HOME/pkg/packages.modular.com_mojo/bin")

# Homebrew Completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
