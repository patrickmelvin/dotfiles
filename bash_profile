#export http_proxy="http://lon1.sme.zscaler.net:80"
#export https_proxy="http://lon1.sme.zscaler.net:9480"
export EDITOR='vim'
export no_proxy=127.0.0.1 # Proxy fix for Rspec
export DEFERRED_GARBAGE_COLLECTION=true

if [ -f ~/.bash/git-completion.bash ]; then
  . ~/.bash/git-completion.bash
fi

if [ -f ~/.bash/path ]; then
  . ~/.bash/path
fi

if [ -f ~/.bash/prompt ]; then
  . ~/.bash/prompt
fi

if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

if [ -f ~/.bash/sage_aliases ]; then
  . ~/.bash/sage_aliases
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

function github {
  branch="$(git rev-parse --abbrev-ref HEAD)"
    url="$(git config --get remote.origin.url)"
    url=${url/git@github.com:/http://github.com/}
  url=${url/.git/}

  if [[ $1 =~ "compare" ]]; then action="compare"
    elif [[ $1 =~ "pr" ]]; then action="pull"
  else action="tree"; fi

    if [[ $2 != "" ]]; then base="$2..."
    else base=""; fi

      url="${url}/${action}/${base}${branch}"

        echo "Opening ${url} $(\open ${url})"
}
