FROM rockylinux/rockylinux:latest

# The build URL in Artifactory
ARG BUILD_URL=''

#ENV UVHOME=/usr/uv
#ENV PATH="${PATH}:${UVHOME}:${UVHOME}/bin"

RUN set -eux \
    && dnf -y update \
    && dnf install -y \
        cpio \
        ed \
        findutils.x86_64 \
        libnsl \
        ncurses \
        openssh-server \
        openssl \
        procps \
        sudo \
        unzip \
        vim \
        wget \
        which \
        diffutils \
    && dnf clean all
#    && ln -s /usr/lib64/libncurses.so.6 /usr/lib64/libncurses.so.5 \
#    && ln -s /usr/lib64/libtinfo.so.6 /usr/lib64/libtinfo.so.5

COPY *mv.sh /usr/local/bin/

COPY JB_LINUXX86_6.1.2.zip /tmp

COPY jbase_config.json /tmp

RUN set -eux \
    && chmod u+x /usr/local/bin/*mv.sh


    #    && install_uv.sh "$BUILD_URL"

#WORKDIR $UVHOME

EXPOSE 22 23 31438

ENTRYPOINT ["startup_mv.sh"]
#ENTRYPOINT ["tail","-f","/dev/null"]