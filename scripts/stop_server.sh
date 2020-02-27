
#!/bin/bash
isExistApp=`pgrep java`
if [[ -n  $isExistApp ]]; then
   service stop tomcat 
fi
