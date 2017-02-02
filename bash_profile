# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
export PATH

export JAVA_HOME=$(/usr/libexec/java_home)

eval "$(rbenv init -)"
ulimit -n 2560
# export PS1="\u@\h:\w$ "

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

