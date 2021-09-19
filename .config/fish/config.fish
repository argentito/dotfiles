set fish_greeting ""

# Aliases

alias grep "grep --color=auto"
#alias cat "ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint""
alias ls "exa --group-directories-first"
alias tree "exa -T"
alias showmepkg 'pacman -Qi 2>&1 < /dev/null | awk "/^Name/{name=\$3} /^Version/{print name,\$3\$4}"'
alias ver "fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias his "history | fzf --tac --no-sort"
set PATH $PATH $HOME/.istioctl/bin
#set KUBECTL_EXTERNAL_DIFF $KUBECTL_EXTERNAL_DIFF "dyff between --omit-header --set-exit-code"
set PATH $PATH $HOME/.deno
alias kubectl 'kubecolor'

# Prompt
starship init fish | source

# Agnoster

set -g theme_display_user no
set -g theme_hide_hostname yes
set -g color_user_bg magenta
set -g color_user_str black
#set -g theme_display_k8s_context yes
#set -g theme_powerline_fonts no
#set -g theme_nerd_fonts yes

# Spacefish

set SPACEFISH_PROMPT_ADD_NEWLINE false
set SPACEFISH_PROMPT_PREFIXES_SHOW false
set SPACEFISH_PROMPT_DEFAULT_PREFIX " "
set SPACEFISH_PROMPT_DEFAULT_SUFFIX " "
set SPACEFISH_USER_SHOW always
set SPACEFISH_USER_COLOR green
set SPACEFISH_HOST_SHOW always
set SPACEFISH_HOST_COLOR cyan
set SPACEFISH_DIR_COLOR blue
set SPACEFISH_PROMPT_ORDER time user host dir git package node ruby golang php rust haskell julia elixir docker aws venv conda pyenv dotnet kubecontext exec_time line_sep battery vi_mode jobs exit_code char 



# docker stuff
abbr -a -g drm docker rm
abbr -a -g drmi docker rmi
abbr -a -g dri docker images
abbr -a -g dexec docker exec -it
abbr -a -g dstopall docker stop (docker ps -q)
abbr -a -g dps docker ps
abbr -a -g rmidang docker rmi -f (docker images -f "dangling=true" -q)
abbr -a -g dls docker ps --format "table {{ .ID }}\t{{ .Status }}\t{{.Names}}"
abbr -a -g dlsa docker ps -a --format "table {{ .ID }}\t{{ .Status }}\t{{.Names}}"


# display the current deployed image
#function current_image
#    set image (kubectl get deployment <deployment> -o=jsonpath='{$.spec.template.spec.containers[:1].image}')
#    printf "$image\n"
#end

# exec to your common pod
#function exec-pod
#    set pod_id (kubectl get pods -l app=<app> -o custom-columns=":metadata.name")
#    kubectl exec -it $pod_id bash
#end

#function custom_prompt
#    set_color normal
#    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
#    set -l kube_context (kubectl config current-context | cut -d. -f1)
#    set -l kube_ns (kubectl config view --minify -o 'jsonpath={..namespace}' 2>/dev/null)
#    set_color 2eb82e
#    set_color cyan
#    echo -n (prompt_pwd)
#    set_color normal
#    echo -n '['
#    set_color 0087ff
#    echo -n "$git_branch"
#    if [ ! -z "$git_branch" ]
#      set_color normal
#      echo -n "/"
#    end
#    set_color ff856d
#    echo -n "$kube_context"
#    set_color normal
#    echo -n "/"
#    set_color ce6dff
#    echo -n "$kube_ns"
#    set_color normal
#    echo -n ']'
#    set_color ffd36d
#    echo -n '$ '
#end

#function fish_prompt --description "Custom fish prompt"
#    custom_prompt
#end

#function show --description "Show fish prompt"
#    function fish_prompt
#        custom_prompt
#    end
#end

#function hide --description "Hide fish prompt"
#    function fish_prompt
#	set_color ffd36d
#        echo -n '>>> '
#    end
#end 
