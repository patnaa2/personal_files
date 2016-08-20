# NOT THE ENTIRE .bashrc, just things that are a nice to have
# when I switch/lose programming environments

# some more ls aliases
alias ll='ls -alF'
alias l='ls -CF'
alias pyo='python'
alias wt='cd /home/anshuman/waterbud'

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Red="\e[0;31m"         # Red
Green="\e[0;32m"        # Green

branch_color() {
  if git diff --quiet 2>/dev/null >&2;
  then
    color=$Green
  else
    color=$Red
  fi
  echo -ne $color 
}

PS1="\u@\h:\w\[\$(branch_color)\]\$(__git_ps1)\[\e[0m\]\$ "
