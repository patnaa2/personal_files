# NOT THE ENTIRE .bashrc, just things that are a nice to have
# when I switch/lose programming environments

# some more ls aliases
alias ll='ls -alF'
alias l='ls -CF'
alias pyo='python'
alias wt='cd /home/anshuman/waterbud'
alias sound_restart='pulseaudio -k && sudo alsa force-reload'
alias net_restart='/etc/init.d/networking restart'

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

function xe_latex() {
    file_name=$(echo $1 | awk -F"." '{print $1}')
    xelatex $1
    xdg-open ${file_name}.pdf
}

function router() {
    route -n | tail -n 3 | head -n 1 | awk '{print $2}'
}

function pingr() {
    ping -c 3 $(router)
}

function pingg() {
    ping -c 3 google.com
}

function traceg() {
    traceroute google.ca
}
