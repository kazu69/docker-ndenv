docker-ndenv
============

Create a dokcer container that can take advantage of multiple versions of node.js using ndenv.

## Usage

Add to '''project/.node-version''' multiple versions.
For example below

'''text
v0.10.25
v0.10.26
v0.11.0
'''

You can dcoker provisioning in VM using Vagrant

'''sh
# provisioning
vagrant up
'''

You can use docker in VM.

'''
vagrant ssh
sudo docker run -i -t kazu69/node_versions (or you container tag) /bin/bash
'''

if not using Vagrant

'''
cd project && docker build -t TAG .
'''
