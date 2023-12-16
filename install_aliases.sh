#!/bin/bash
curl -SsL https://raw.githubusercontent.com/shivan2418/shell/master/.bash_aliases >> ~/.bash_aliases
# check if the .bashrc file loads bash_aliases
count=$(grep -c  "if \[ \-f ~/.bash_aliases" ~/.bashrc)
# if count is zero (load bash aliases line not found) then add the following lines to .bashrc
if [ $count -eq 0 ]
then
  echo "Your .bashr does not load bash_aliases. Adding the following lines, add neccessary lines..."
  echo "if [ -f ~/.bash_aliases ]; then" >> ~/.bashrc
  echo "    . ~/.bash_aliases" >> ~/.bashrc
  echo "fi" >> ~/.bashrc
fi
echo "Restart your terminal to see the changes."