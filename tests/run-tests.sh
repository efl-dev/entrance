#!/bin/bash
# wrapper to run entrance with env vars

export XDG_RUNTIME_DIR="/tmp/ecore"

for d in "${XDG_RUNTIME_DIR}"{,/.ecore} /usr/share/xsessions; do
	[[ ! -d "${d}" ]] && mkdir -p "${d}"
done

echo "[Desktop Entry]
Name=XSession
Comment=Xsession
Exec=/etc/entrance/Xsession
TryExec=/etc/entrance/Xsession
Icon=
Type=Application
" > /usr/share/xsessions/Xsession.desktop

/usr/sbin/entrance

EPID="$(pgrep entrance)"

kill -SIGUSR1 ${EPID}

sleep 30

kill ${EPID}

EPID="$(pgrep X)"

[[ ${EPID} ]] && kill -9 ${EPID}

ps x o pid,user,group,command

#systemctl start entrance
