#!/bin/bash
SUPERVISOR_PARAMS='-c /etc/supervisord.conf'
if [ "$(ls /config/init/)" ]; then
  for init in /config/init/*.sh; do
    chmod +x . $init \
    && . $init
  done
fi


if [[ $@ ]]; then 
  eval $@
fi

supervisord -n $SUPERVISOR_PARAMS
