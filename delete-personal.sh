#!/bin/bash

SCRIPTS_DIR=`dirname $0`

. $SCRIPTS_DIR/parse-arguments.sh

. $SCRIPTS_DIR/setup-environment.sh

echo "### Delete project resources."

APPLICATION_LABELS="app=$NAME_PREFIX$WORKSHOP_NAME"

PROJECT_RESOURCES="all,serviceaccount,rolebinding,configmap"

oc delete "$PROJECT_RESOURCES" -n "$NAMESPACE" --selector "$APPLICATION_LABELS"
