# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=/usr/local/Cellar/mysql/5.7.18_1/bin:$PATH
PATH=/usr/local/Cellar/node/7.10.0/bin:$PATH
export PATH
export JAVA_HOME=$(/usr/libexec/java_home)

export CATALINA_HOME=/opt/apache-tomcat-7.0.64
export CATALINA_OPTS="-Dsite.app.environment=development -Dprefetch.datafiles=false -Dload.from.manifests=true -Dcom.quantcast.rmr.RowCacheAccess.type=weak -Dorg.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH=true -Dstatic.cdn=//ak.quantcast.com/static/"

# eval "$(rbenv init -)"
# ulimit -n 2560
# export PS1="\u@\h:\w$ "

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

memcached -m 100 -l 127.0.0.1 -p 11211 -d

