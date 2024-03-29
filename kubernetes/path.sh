#!/usr/bin/env bash

# If there's already a kubeconfig file in ~/.kube/config it will import that too and all the contexts
DEFAULT_KUBECONFIG_FILE="$HOME/.kube/config"
if test -f "${DEFAULT_KUBECONFIG_FILE}"
then
  export KUBECONFIG="$DEFAULT_KUBECONFIG_FILE"
fi

# Your additional kubeconfig files should be inside ~/.kube/configs
KUBECONFIG_FILES="$HOME/.kube/configs"
OIFS="$IFS"
IFS=$'\n'
if [ -d $KUBECONFIG_FILES ]
then
  for kubeconfigFile in `find "${KUBECONFIG_FILES}" -type f -name "*.yml" -o -name "*.yaml"`
  do
    export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
  done
fi
IFS="$OIFS"