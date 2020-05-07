sudo crm -F configure primitive fence_nodo1 stonith:fence_virsh params ipaddr=192.168.128.101 port=22 action=off login=vagrant passwd=vagrant op monitor interval=60s
sudo crm -F configure primitive fence_nodo2 stonith:fence_virsh params ipaddr=192.168.128.101 port=22 action=off login=vagrant passwd=vagrant delay=15 op monitor interval=60s
sudo crm -F configure primitive fence_nodo3 stonith:fence_virsh params ipaddr=192.168.128.101 port=22 action=off login=vagrant passwd=vagrant delay=15 op monitor interval=60s
sudo crm -F configure location l_fence_nodo1 fence_nodo1 -inf: nodo1
sudo crm -F configure location l_fence_nodo2 fence_nodo2 -inf: nodo2
sudo crm -F configure location l_fence_nodo3 fence_nodo3 -inf: nodo3
