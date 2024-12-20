## config.fish

# disable welcome message
set -U fish_greeting

# set pwd length
set -g fish_prompt_pwd_dir_length 0
set -g fish_prompt_pwd_full_dirs 0

# aliases
source ~/.aliases

# flutter
# set -gx FLUTTER_HOME /opt/flutter
# set -gx PATH "$FLUTTER_HOME/bin" $PATH

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

# esp-idf
# source /opt/esp-idf/export.fish

# tabtab source for packages
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# platformio
set -gx PATH "$HOME/.local/bin" $PATH

# zoxide
zoxide init fish | source

# starship
starship init fish | source
