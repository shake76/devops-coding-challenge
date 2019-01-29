#!/usr/bin/python
import os
import subprocess, sys

print("------------------------------------------------")
print("Please select between the following options\n\n1. Get status of the POD in kubernetes cluster\n2. Run Deployment in kubernetes cluster\n3. Update Deployment")
print("------------------------------------------------")

action = input("Enter de action to be performed 1-3? ")

def run_get_pod ():
    print("=======================================")
    print("Running kubectl_get_pod status command")
    print("=======================================")
    subprocess.call(["kubectl", "--insecure-skip-tls-verify", "get", "pod"])

def run_deploy ():
    print("======================================")
    print("Running kubectl_create_deploy command")
    print("======================================")
    subprocess.call(["kubectl", "--insecure-skip-tls-verify", "create", "-f", "deployment.yml"]) 

def run_update_deploy ():
    print("================================")
    print("Running kubectl_apply command")
    print("================================")
    subprocess.call(["kubectl", "--insecure-skip-tls-verify", "apply", "-f", "update.yml"])


def default_case ():    
    print("Wrong entry! Invalid Option must be 1-3")

action_dict = {
 
    "1": run_get_pod,
 
    "2": run_deploy,

    "3": run_update_deploy
    }

action_dict.get(action,default_case)()
