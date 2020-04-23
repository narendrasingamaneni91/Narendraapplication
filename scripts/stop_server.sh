
#!/bin/bash
isExistApp=`pgrep java`
if [[ -n  $isExistApp ]]; then
   sh /root/apache-tomcat-9.0.34/bin/shutdown.sh
fi
