FROM debian:11.8
LABEL maintainer="Chuck Sanders <nathhad@gmail.com>"
LABEL version="11.8.02"

RUN echo "deb http://deb.debian.org/debian bullseye main non-free" > /etc/apt/sources.list && \
	echo "deb http://security.debian.org/debian-security bullseye-security main non-free" >> /etc/apt/sources.list && \
	echo "deb http://deb.debian.org/debian bullseye-updates main non-free" >> /etc/apt/sources.list && \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y build-essential bash binutils bzip2 flex git g++ gcc util-linux gawk && \
	apt-get install -y help2man intltool libelf-dev zlib1g-dev make libglvnd-dev pkg-config && \
	apt-get install -y libncurses5-dev libssl-dev patch perl-modules git ncurses-dev libz-dev && \
	apt-get install -y python2-dev wget gettext xsltproc zlib1g-dev zip unzip libssl-dev && \
	apt-get install -y python2 python3-dev libelf-dev subversion gettext gawk curl && \
	apt-get install -y rsync perl unrar rar jshon bsdextrautils nano gosu && \
	apt-get install -y clang bison gcc-multilib g++-multilib tmux && \
	apt-get install -y python3-setuptools swig && \
	apt-get clean && \
	mkdir /build && \
	mkdir /build/autobuild && \
	mkdir /build/rooter && \
	mkdir /build/output
	
ENTRYPOINT ["/bin/bash"]
