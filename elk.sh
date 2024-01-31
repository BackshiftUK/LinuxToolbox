  GNU nano 6.2                                                                 scripts/elk.sh                                                                           
if [[ $1 = '' ]]
then

        printf """ELK.sh
    ${RED}
Essential Commands:
* start => ...
* stop => ...
* restart => ...
"
elif [[ $1 = 'start' ]]
then
        # echo "start"
systemctl start elastic-agent
systemctl start elasticsearch
systemctl start kibana


elif [[ $1 = "stop" ]]
then
systemctl stop elastic-agent
systemctl stop elasticsearch
systemctl stop kibana

elif [[ $1 = "restart" ]]
then

systemctl restart elastic-agent
systemctl restart elasticsearch
systemctl restart kibana

else
     echo "test"
fi

