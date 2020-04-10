# ~/.zshrc

# ------ #
# prompt #
# ------ #

export PS1=" ⏩  "
alias c="clear"

# --------- #
# directory #
# --------- #

alias ls="ls -GF"
alias cdt="cd ~/Turing/2module/"
alias cdtp="cd ~/Turing/2module/projects/"
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias md="mkdir -p"
alias rd="rmdir"

# ---- #
# atom #
# ---- #

alias a='atom'
alias ah='atom .'

# --- #
# git #
# --- #

alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gpom="git pull origin master"
alias gcm="git checkout master"
alias gba="git branch -a"                        # show branches
alias grv="git remote -v"                        # show remotes
alias gbr="git browse"                           # open repo on github
alias gcb="git checkout -b"                      # create and checkout to new branch
alias glp="git log --pretty=oneline"             # oneline logs
alias gl="git log --all --graph --decorate"      # detailed log

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

cobm() {
  git checkout master && pull && git checkout -b "$1"
}

function gcm() {
  args=$@
  git commit -m "$args"
}

# ----- #
# rails #
# ----- #

alias r="rails"
alias rg="rails g"
alias rs="rails s"
alias rc="rails c"
alias bi="bundle install"
alias ber="bundle exec rspec"
alias be="bundle exec"
alias seed="bundle exec rake db:reset"
alias drop="bundle exec rake db:drop"
alias migrate="bundle exec rake db:migrate"
alias load="bundle exec rake db:schema:load"
alias server="bundle exec rails s"

# ------ #
# heroku #
# ------ #

alias setupheroku= "heroku run rake db:setup"        # migrate & seed
