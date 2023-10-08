### Attach EBS volume to running EC2 instance
**NOTE**
* EBS volume should be in same AZ  where you instance is running
## steps

by default  you cant see the volume in LINUX server, we need to do some configuration
* you can check the volume available or not using below command.

```
lsblk
```
* create file system from volume

```
sudo mkfs -t xfs /dev/xvdf
```
