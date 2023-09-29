FROM    quay.io/centos/centos:stream9
LABEL   description="Centos stream 9 with python3.11 and pandoc"

RUN     dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y && \
        dnf config-manager --enable epel && \
        /usr/bin/crb enable && \
        dnf -y install git python3.11 python3.11-devel gcc unzip make pandoc && \
        dnf clean all && \
        rm -rf /var/cache/yum

