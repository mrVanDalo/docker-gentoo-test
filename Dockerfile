
FROM gentoo/stage3-amd64
MAINTAINER Ingolf Wagner <docker@ingolf-wagner.de>

COPY localOverlay /etc/portage/repos.conf/localOverlay
COPY run.sh /ebuilds/run.sh

WORKDIR /ebuilds
CMD ./run.sh
