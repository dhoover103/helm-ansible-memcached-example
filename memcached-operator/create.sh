operator-sdk build quay.io/dhoover103/memcached-operator:v0.0.1
docker push quay.io/dhoover103/memcached-operator:v0.0.1

oc create -f deploy/service_account.yaml
oc create -f deploy/role.yaml
oc create -f deploy/role_binding.yaml
oc create -f deploy/operator.yaml

sleep 30

oc create -f deploy/crds/memcachedoperator_v1alpha1_memcached_cr.yaml
