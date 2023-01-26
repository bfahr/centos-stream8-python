FROM    quay.io/centos/centos:stream8
LABEL   description="Centos stream 8 with python3.8 and pandoc"

RUN     dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y && \
        dnf config-manager --enable epel && \
        dnf config-manager --set-enabled powertools && \
        dnf -y install python38 python38-devel gcc unzip make pandoc && \
        dnf clean all && \
        rm -rf /var/cache/yum

