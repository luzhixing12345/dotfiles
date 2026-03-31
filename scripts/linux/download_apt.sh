# usage: change PACKAGES

PACKAGES=$1
apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests \
	--no-conflicts --no-breaks --no-replaces --no-enhances \
	--no-pre-depends ${PACKAGES} | grep "^\w")

tar -cvf packages.tar *.deb
