#!/bin/sh
echo "HTTP/1.1 200 ok"
echo "Content-type:  text/html"
echo ""
if [ x"${QUERY_STRING}" = xkexp ]; then
        echo "<event type=\"UserPlayer\" value=\"play\" comment=\"http://kexp-mp3-2.cac.washington.edu:8000/\"/>" > /tmp/flashplayer.event
elif [ x"${QUERY_STRING}" = xkuow ]; then
        echo "<event type=\"UserPlayer\" value=\"play\" comment=\"http://128.208.34.80:8002/\"/>" > /tmp/flashplayer.event
elif [ x"${QUERY_STRING}" = xstop ]; then
        echo "<event type=\"MusicPlayer\" value=\"stop\"/>" > /tmp/flashplayer.event
elif [ x"${QUERY_STRING}" = xindiepop ]; then
        echo "<event type=\"UserPlayer\" value=\"play\" comment=\"http://ice.somafm.com/indiepop\"/>" > /tmp/flashplayer.event
elif [ x"${QUERY_STRING}" = xdoomed ]; then
        echo "<event type=\"UserPlayer\" value=\"play\" comment=\"http://ice.somafm.com/doomed\"/>" > /tmp/flashplayer.event
elif [ x"${QUERY_STRING}" = xgroovesalad ]; then
        echo "<event type=\"UserPlayer\" value=\"play\" comment=\"http://ice.somafm.com/groovesalad\"/>" > /tmp/flashplayer.event
else
        echo "I don't know the $QUERY_STRING stream - try one of: kexp, kuow, indiepop, doomed, groovesalad, or stop"
fi
chumbyflashplayer.x -F1 > /dev/null 2>&1
echo ""
echo ""
echo "Now playing ${QUERY_STRING}"


