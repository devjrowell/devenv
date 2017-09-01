alias devenv="docker exec -it devenv bash -c 'ssh jrowell@devenv'"

export JAVA_HOME=$(/usr/libexec/java_home)

export ANT_HOME=/usr/local/share/ant
export MAVEN_HOME=/usr/local/share/maven
export GRADLE_HOME=/usr/local/share/gradle
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk

export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/19.1.0:$PATH


###-tns-completion-start-###
if [ -f /Users/jrowell/.tnsrc ]; then 
    source /Users/jrowell/.tnsrc 
fi
###-tns-completion-end-###
