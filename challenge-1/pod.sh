#!/bin/bash

#kubectl get pod -A -o json
kubectl get pod -A --sort-by='{.metadata.creationTimestamp}' | tac
