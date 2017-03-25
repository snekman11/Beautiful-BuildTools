# Beautiful-BuildTools
A nice wrapper to Spigot buildtools, written 100% in bash

## Install
Extremely simple to "install" and use since it's just a bash script.

Requirements:
..* A Debian based linux distro
..* Sudo installed
..* Wget installed
..* Sudo privileges

Ok, so onto setting up. It's simple. Just copy and paste this into your terminal:
```wget https://raw.githubusercontent.com/snekman11/Beautiful-BuildTools/master/build.sh
chmod +x build.sh
```

Then, to run the script:
```./build.sh
```
The script will clean up from any previous installation attempts, install dependencies, download BuildTools and prompt you for the version you'd like to compile. You can specify something like 1.9.4 here, or just leave it blank for the latest version. The server jars will then be built, the script will clean up its work and leave you with 2 jar files: spigot.jar and craftbukkit.jar
