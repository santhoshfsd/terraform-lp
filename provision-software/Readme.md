
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

### connections
    - user 
    - password
    - aws ssh keypairs
        - public key - will be uploaded to the aws 
        - private key - used to login 
    - host 
        self object
        https://www.terraform.io/language/resources/provisioners/connection#the-self-object
# remote exec 
```
provisioner 'file'

provisioner 'remote-exex '

```

## generate ssh key pair
- ssh-keygen -f tf-ssh-key

## AWSCompromisedKeyQuarantineV2