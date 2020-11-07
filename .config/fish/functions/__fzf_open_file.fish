function __fzf_open_file --description "Open the file with default editor."
    set --local --export SHELL (command --search fish)
    set --local file_selected (
        fd --hidden --follow --color=always --type f --exclude=.git 2>/dev/null |
        fzf --ansi --preview='__fzf_preview_file {}')
    if test $status -eq 0
        and $EDITOR $file_selected
    end
    commandline --function repaint
end
