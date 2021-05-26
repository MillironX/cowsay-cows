# Only add stuff if cowsay is installed
if [[ $(command -v cowsay) ]]; then
  # Add the originally present cows to COWPATH
  for COW in $(find $(whereis cowsay | awk '{print $3}') -name "*.cow" | xargs dirname | uniq); do
    export COWPATH=$COW:$COWPATH
  done

  # Add the plugin's cows to COWPATH
  export COWPATH=$(dirname $0):$COWPATH

  # Create some fun aliases
  alias bullsay="cowsay -f bull"
  alias steersay="cowsay -f longhorn"
  alias tuxsay="cowsay -f tux"
else
  # Direct the user to install cowsay
  alias cowsay="echo \"cowsay needs to be installed via apt, dnf, or the like\""
fi
