FROM debian:11.1
LABEL maintainer="Chuck Sanders <nathhad@gmail.com>"

RUN echo "deb http://deb.debian.org/debian bullseye main non-free" > /etc/apt/sources.list && \
	echo "deb http://security.debian.org/debian-security bullseye-security main non-free" >> /etc/apt/sources.list && \
	echo "deb http://deb.debian.org/debian bullseye-updates main non-free" >> /etc/apt/sources.list && \
	apt update && \
	apt upgrade -y && \
	apt install -y build-essential bash binutils bzip2 flex git g++ gcc util-linux gawk && \
	apt install -y help2man intltool libelf-dev zlib1g-dev make libglvnd-dev pkg-config && \
	apt install -y libncurses5-dev libssl-dev patch perl-modules git ncurses-dev libz-dev && \
	apt install -y python2-dev wget gettext xsltproc zlib1g-dev zip unzip libssl-dev && \
	apt install -y python2 python3-dev libelf-dev subversion gettext gawk wget curl && \
	apt install -y rsync perl unrar rar jshon && \
	apt clean && \
	mkdir /build && \
	mkdir /build/autobuild && \
	mkdir /build/rooter && \
	mkdir /build/output
	
ENTRYPOINT ["/bin/bash"]
