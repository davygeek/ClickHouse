# This is an include file used by the other scripts in this directory.

# Most clusters will just be accessed with 'kubectl' on $PATH.
# However, some might require a different command. For example, GKE required
# KUBECTL='gcloud container kubectl' for a while. Now that most of our
# use cases just need KUBECTL=kubectl, we'll make that the default.
KUBECTL=${KUBECTL:-kubectl}

# Kubernetes api address for $KUBECTL 
# The default value is 127.0.0.1:8080
# When the Kubernetes api server is not local, We can easily access the api by edit KUBERNETES_API_SERVER's value
KUBERNETES_API_SERVER=${KUBERNETES_API_SERVER:-'https://127.0.0.1:8080'}

# Kubernetes namespace for ClickHouse and components.
CLICKHOUSE_NAME=${CLICKHOUSE_NAME:-'clickhouse-test'}

# Kubernetes options config
KUBECTL_OPTIONS="--insecure-skip-tls-verify=true --namespace=$CLICKHOUSE_NAME --server=$KUBERNETES_API_SERVER"

