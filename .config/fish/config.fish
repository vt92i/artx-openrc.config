## config.fish

# disable welcome message
set -U fish_greeting

# aliases
source ~/.aliases

# android-sdk
set -gx ANDROID_HOME /opt/android-sdk
set -gx ANDROID_SDK_ROOT /opt/android-sdk
set -gx PATH "$ANDROID_HOME/cmdline-tools/latest/bin" $PATH
set -gx PATH "$ANDROID_HOME/build-tools/34.0.0" $PATH

# flutter
set -gx FLUTTER_HOME /opt/flutter
set -gx PATH "$FLUTTER_HOME/bin" $PATH

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

# tabtab source for packages
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# zoxide
zoxide init fish | source

# starship
starship init fish | source
