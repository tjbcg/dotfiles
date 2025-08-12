if status is-interactive
    type -q starship; and starship init fish | source
    type -q pyenv; and pyenv init - | source
    type -q keychain; and eval (keychain --eval --quiet);
    # Only run this in interactive shells

    set fish_cursor_default     block      blink
    set fish_cursor_insert      line       blink
    set fish_cursor_replace_one underscore blink
    set fish_cursor_visual      block

    function fish_user_key_bindings
      fish_default_key_bindings -M insert
      fish_vi_key_bindings --no-erase insert
    end
end
