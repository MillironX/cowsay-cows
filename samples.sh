#!/bin/sh

{
  echo "# cowsay-cows"
  echo ""
  echo "cowfiles in the original spirit of cowsay, except that all of these are actually bovine"
  echo ""
  echo "Install using [Antigen](https://github.com/zsh-users/antigen)"
  echo ""
  echo "\`\`\`bash"
  echo "antigen bundle millironx/cowsaycows"
  echo "\`\`\`"
  echo ""
  echo "## Examples"
  echo ""
} > README.md

cowsay_message() {
  COW="$1"
  MESSAGE="$2"

  {
    echo "### $COW"
    echo ""
    echo "\`\`\`shellsession"
    echo "\$ cowsay -f $COW"
    cowsay -f "$COW" "$MESSAGE"
    echo "\`\`\`"
    echo ""
  } >> README.md
}

cowthink_message() {
  COW="$1"
  MESSAGE="$2"

  {
    echo "### $COW"
    echo ""
    echo "\`\`\`shellsession"
    echo "\$ cowthink -f $COW"
    cowthink -f "$COW" "$MESSAGE"
    echo "\`\`\`"
    echo ""
  } >> README.md
}

cowsay_message bell "The hills are alive with the sound of moo-sic"
cowsay_message birdstale "Grandpa said there was a moral there, but you had to figure it out for yourself"
cowsay_message bull "Actually, I'm a bull"
{
  echo "**BONUS**: aliased to \`bullsay\`"
  echo ""
} >> README.md
cowsay_message compucow "The programmers number one excuse for slacking off: cow-pie-ling"
cowsay_message cownterfeit "The love of moo-lah is the root of all evil"
cowsay_message cowpooling "Maybe Al Gore will forgive us for all those methane emissions this way"
cowsay_message cowstruction "My favorite part is bull-dozing"
cowsay_message longhorn "I've been sent to spread the message: God blessed Texas!"
{
  echo "**BONUS**: aliased to \`steersay\`"
  echo ""
} >> README.md
cowsay_message papal "I forgive you, my calf"
cowsay_message pie "Nobody makes them like Aunt Aggie"
cowthink_message resting "Insert deep thoughts and ruminations here"
cowsay_message super "If Impossible is as good as beef, then Bizarro is as good as me"
