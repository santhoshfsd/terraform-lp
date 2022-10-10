
# provision software
    - custom ami
        packer - tool build custom ami with software
    - Boot using std ami
        - install software using 
            - chef, puppet, ansible
            - file uploads
    
    - chef is integrated with terrform
    - puppet using remote exec 
    - anisble - run terraform scripts first and then output ipaddress, run ansible playbook on the hosts


# file uploads
- used along with remote-exec
- ec2-user is the default name
- use ssh keypairs

# remote exec 
```
provisioner 'file'

provisioner 'remote-exex '

```