set -gx VISUAL "code -nw"

set -x GPG_TTY (tty)

alias wsl="wsl.exe"
alias winget="winget.exe"
alias pwsh="powershell.exe"
alias ngen="powershell.exe ngen"

alias vim="nvim"
alias vi="nvim"
alias nano="nvim"

# dracula theme
set -gx fish_color_normal normal
set -gx fish_color_command F8F8F2
set -gx fish_color_quote F1FA8C
set -gx fish_color_redirection 8BE9FD
set -gx fish_color_end 50FA7B
set -gx fish_color_error FFB86C
set -gx fish_color_param FF79C6
set -gx fish_color_comment 6272A4
set -gx fish_color_match --background=brblue
set -gx fish_color_selection white --bold --background=brblack
set -gx fish_color_search_match bryellow --background=brblack
set -gx fish_color_history_current --bold
set -gx fish_color_operator 00a6b2
set -gx fish_color_escape 00a6b2
set -gx fish_color_cwd green
set -gx fish_color_cwd_root red
set -gx fish_color_valid_path --underline
set -gx fish_color_autosuggestion BD93F9
set -gx fish_color_user brgreen
set -gx fish_color_host normal
set -gx fish_color_cancel -r
set -gx fish_pager_color_description B3A06D yellow
set -gx fish_pager_color_completion normal
set -gx fish_pager_color_prefix normal --bold --underline
set -gx fish_pager_color_progress brwhite --background=cyan
