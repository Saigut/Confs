# fish git prompt
#set __fish_git_prompt_showdirtystate 'yes'
#set __fish_git_prompt_showstashstate 'yes'
#set __fish_git_prompt_showupstream 'yes'
#set __fish_git_prompt_color_branch yellow

# Status Chars
#set __fish_git_prompt_char_dirtystate '⚡'
#set __fish_git_prompt_char_stagedstate '→'
#set __fish_git_prompt_char_stashstate '↩'
#set __fish_git_prompt_char_upstream_ahead '↑'
#set __fish_git_prompt_char_upstream_behind '↓'
 
function fish_prompt
        set last_status $status
#        set_color $fish_color_cwd
#        printf '%s' (prompt_pwd)
#        set_color normal
#       	printf '%s > ' (__fish_git_prompt)
#        set_color normal
	 #echo -n -s (set_color $fish_color_user) "$USER" (set_color normal) @ (set_color $fish_color_host) (hostname|cut -d . -f 1) (set_color normal) ' ' (set_color $color_cwd) (prompt_pwd) (set_color normal) (__fish_git_prompt) (set_color normal) "> "
	 set -l git_prompt (git branch 2>/dev/null | grep '^*' | colrm 1 2)
	 #set -l pwd (echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g')
	 set -l pwd (pwd|sed "s=$HOME=~=")
	 echo -n -s (set_color $fish_color_user) "$USER" (set_color normal) @ (set_color $fish_color_host) (hostname|cut -d . -f 1) (set_color normal) ' ' (set_color -o blue) $pwd ' '
	 if test -n "$git_prompt"
	    printf '['
	    set_color yellow
	    printf '%s' $git_prompt
	    set_color -o blue
	    printf ']'
	 end
	 set_color normal
	 printf '%s' "➤ "
end

set fish_greeting ""

alias emacs="emacs -nw"