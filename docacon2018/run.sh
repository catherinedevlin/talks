# Runs Docassemble, letting it access host at name 'outside'

export HOST_IP=`ip -4 addr show scope global dev docker0 | grep inet | awk '{print \$2}' | cut -d / -f 1`
docker run --rm -it -p 80:80 --add-host outside:$HOST_IP jhpyle/docassemble 

