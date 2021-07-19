PARROT_LINE_COLOR=red
PARROT_ERR_COLOR=red
PARROT_USER_COLOR=red
PARROT_AT_COLOR=yellow
PARROT_HOST_COLOR=cyan
PARROT_DIR_COLOR=green
PARROT_PROMPT_COLOR=yellow
PARROT_GIT_BRANCH_COLOR=white
PARROT_GIT_STATUS_COLOR=red
PARROT_VENV_COLOR=white
PARROT_PS2_PROMPT_COLOR=green

# override default virtualenv indicator in prompt
VIRTUAL_ENV_DISABLE_PROMPT=1
venv_info() {
    [ $VIRTUAL_ENV ] && echo "(%{$fg[$PARROT_VENV_COLOR]%}$(basename $VIRTUAL_ENV)%{$fg[$PARROT_LINE_COLOR]%})"
}

PROMPT=$'%{$fg[$PARROT_LINE_COLOR]%}┌─%(?,,%{$fg[$PARROT_LINE_COLOR]%}[%{$fg_bold[$PARROT_ERR_COLOR]%}✗%{$reset_color%}%{$fg[$PARROT_LINE_COLOR]%}]─)$(venv_info)[%{$fg_bold[$PARROT_USER_COLOR]%}%n%{$reset_color%}%{$fg_bold[$PARROT_AT_COLOR]%}@%{$fg_bold[$PARROT_HOST_COLOR]%}%m%{$reset_color%}%{$fg[$PARROT_LINE_COLOR]%}]─[%{$fg[$PARROT_DIR_COLOR]%}%~%{$reset_color%}%{$fg[$PARROT_LINE_COLOR]%}]%{$(git_prompt_info)%}
%{$fg[$PARROT_LINE_COLOR]%}└──╼ %{$fg_bold[$PARROT_PROMPT_COLOR]%}%(!.#.$)%{$reset_color%} '
PS2=$' %{$fg[$PARROT_PS2_PROMPT_COLOR]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[$PARROT_LINE_COLOR]%}(%{$fg_bold[$PARROT_GIT_BRANCH_COLOR]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[$PARROT_LINE_COLOR]%}) "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[$PARROT_GIT_STATUS_COLOR]%}⚡%{$reset_color%}"
