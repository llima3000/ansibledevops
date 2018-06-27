#!/bin/sh
ansible-playbook deployControllers.yml -e "mgmt_ip=10.10.29.251 vm_name=luiz-1-gslb-cluster-ctrl"&
ansible-playbook deployControllers.yml -e "mgmt_ip=10.10.29.252 vm_name=luiz-2-gslb-cluster-ctrl"&
ansible-playbook completeControllerDeploy.yml -e "controller=10.10.29.250 vm_name=luiz-0-gslb-cluster-ctrl"
#ansible-playbook formCluster.yml -e "cluster_vip=10.10.29.249 controller=10.10.29.250 cluster_node2=10.10.29.251 cluster_node3=10.10.29.252"
