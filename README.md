# Non root debug container

Ubuntu container with some additional tools. The container is created to run as non root.

The container is uploaded to `freddeliv/rootlessubuntu:20.04`

The following can be added as a function if you want a handy function in you bash shell

```bash
function k8s-deploy-debug {
  kubectl run debug --rm -it \
    --image=freddeliv/rootlessubuntu:20.04 \
    --overrides='{"spec":{"securityContext":{"runAsUser":1000,"runAsGroup":1000}}}' \
    ${*}
}
```
