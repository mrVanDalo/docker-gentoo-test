
FROM gentoo/stage3-amd64
MAINTAINER Ingolf Wagner <docker@ingolf-wagner.de>

COPY localOverlay /etc/portage/repos.conf/localOverlay
COPY run.sh       /ebuilds/run.sh

# install some tools repoman
RUN emerge --sync \
    && emerge repoman \
    && emerge app-text/tree \
    && rm -rf /usr/portage

WORKDIR /ebuilds
CMD ./run.sh
