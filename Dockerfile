FROM redhat/ubi8:latest

RUN yum --disableplugin=subscription-manager -y update \
    && yum --disableplugin=subscription-manager -y --nogpgcheck install \
        openssh-server \
        ca-certificates \
        zsh \
        curl \
        vim \
        git \
        clang \
        cmake \
        make \
        gdb \
    && yum --disableplugin=subscription-manager clean all
