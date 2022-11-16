#! /bin/bash 


services=$(docker compose ps --services )

if [[ ! -z "$services" ]] ;then
    for  s in $services ; do 
        services_id=$(docker compose ps -q  $s)
        ip=$(docker inspect -f  \
        '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \
        $services_id)
        code=$(curl --head --write-out %{http_code} --silent --output \
         /dev/null http://$ip)
        echo " service $s on $ip returned with status code $code"
        if [[ "$code" -ne 200 ]] ; then
            $(docker compose restart $s)
        else 
            echo done
        fi
    done 
fi



