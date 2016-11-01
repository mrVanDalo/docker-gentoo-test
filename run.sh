#!/bin/bash

cat <<EOF

-----------------------------------------------------------

You have to inject an overlay folder in the folder /ebuilds.
This folder also needs to contain a run.sh script.

-----------------------------------------------------------

example:

$> echo 'emerge --sync vim emacs'
$> docker run \
   -v /root/too/sourcetree:/usr/portage \
   -v /root/too/overlay:/ebuilds \
   -t gentoo-test

-----------------------------------------------------------

example:

define you docker-compose.yml

> gentoo-test:
>   image: gentoo-test
>   volumes :
>     - ./example-overlay:/ebuilds
>     - ./dist:/usr/portage/
>   command: emerge --sync vim emacs

and run

$> docker-compose up

-----------------------------------------------------------

EOF

