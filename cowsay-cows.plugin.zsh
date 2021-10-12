# Add default install cows to COWPATH
# Search for cows in $PREFIX/share/cows. According to the original repo
# (https://github.com/tnalpgge/rank-amateur-cowsay), this is the place to find
# cowfiles. Arch, local builds (including Homebrew) and Android/Termux are the
# only distros to stick with this location afaik
COWPATH=$COWPATH:$(dirname $(dirname $(command -v cowsay)))/share/cows

# Add the oddball cowfile locations
COWPATH=$COWPATH:/usr/share/cowsay      # RHEL/Fedora
COWPATH=$COWPATH:/usr/share/cowsay/cows # Debian/Ubuntu

# Add the plugin's cows to COWPATH
COWPATH=$(dirname $0):$COWPATH

# COWPATH complete! Use it!
export COWPATH

# Create some fun aliases
alias bullsay="cowsay -f bull"
alias steersay="cowsay -f longhorn"
alias tuxsay="cowsay -f tux"
