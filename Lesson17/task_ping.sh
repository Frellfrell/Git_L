#!/bin/env bash 

read -p "adress ping: " HOST

FAIL_COUNT=0

while true; do
            PING_OUTPUT=$(ping -n 1 "$HOST")
      if echo "$PING_OUTPUT" | grep -q "TTL="; then
            TIME_MS=$(echo "$PING_OUTPUT" | grep "TTL=" | sed -n 's/.*Zeit=\([0-9]*\).*/\1/p')
      if [ -n "$TIME_MS" ]; then
echo "Response from $HOST: ${TIME_MS} ms"

      if [ "$TIME_MS" -gt 100 ]; then
echo "Attention time ping > 100 ms!"

fi 

FAIL_COUNT=0

       else
echo "Failed to retrieve the time ping."
 FAIL_COUNT=$((FAIL_COUNT+1))

fi

       else
echo "Ping failed."
 FAIL_COUNT=$((FAIL_COUNT+1))

fi

       if [ "$FAIL_COUNT" -ge 3 ]; then
echo "3 ping failed. End"
       break
fi

sleep 1

done
 
