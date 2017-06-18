#!/bin/sh

export KSROOT=/jffs/koolshare
export KSURL=https://ttsoft.ngrok.wang
export PERP_BASE=$KSROOT/perp
export PATH=$KSROOT/bin:$KSROOT/scripts:/usr/bin:/sbin:/bin:/usr/sbin

ACTION=$1
ID=$1
export LANIP=$(nvram get lan_ipaddr)

http_response()  {
        ARG0="$@"
        #curl -X POST -d "$ARG0" http://$LANIP/_resp/$ID
        curl -X POST -d "$ARG0" http://$LANIP:80/_resp/$ID
}
