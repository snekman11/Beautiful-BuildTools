green() {
        echo -n "$(tput setaf 2)"
}

cyan() {
        echo -n "$(tput setaf 6)"
}

reset() {
        echo -n "$(tput setaf 7)"
}

main() {
        cyan
        echo "Starting..."
        echo "Install dependencies..."
        reset
        sudo apt-get install git openjdk-7-jre-headless tar
        cyan
        echo "Starting download..."
        reset
        sudo rm -R build
        mkdir build
        wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
        cyan
        echo -n "What revision of spigot would you like to build. Reply with nothing if you want the latest version. "
        green
        read rev
        cyan
        echo "Starting build..."
        reset
        mv BuildTools.jar build
        cd build
        if [ -z "$rev" ] ; then
                java -jar BuildTools.jar
        else
                java -jar BuildTools.jar --rev "$rev"
        fi
        cyan
        cd ../
        mv build/spigot-* spigot.jar
        mv build/craftbukkit-* craftbukkit.jar
        echo "Built successfully!"
        sudo rm -R build
        reset
}

main
