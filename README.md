# Basic AWS K8s Cloudformation Architecture

This provides a template for creating K8s infrustructure with 1 master and 3 ec2 instances with
terraform. This is based on the Ubuntu AMIs provided by heptio. The AMIs comes with preinstalled packages 
and you have to be experienced or have knowledge on how K8s works to run this.

# Configuration
The following has to be preconfigured in the cloudformation template as default. The template was edited to suit my needs and was derived from the original created by heptio.

```
* EC2 KeyPair
* InstanceType
* DiskSizeGb
* AvailabilityZone
* AdminIngressLocation
* K8sNodeCapacity
* NetworkingProvider
```

# Resources Created
Based on the template:
```
* VPC
* Subnet
* Routing Table
* Internet Gateway
* Security Group
* 4 m3.medium instances(1 k8s master & 3 nodes)
* ELB
```
Puclic Access to the ec2 instances is not provided as these where added to a vpn access. To publicly access the ec2 instances add the appropriate rules to the security group to suit your needs.

# Implementation
To run, configure your AWS provider as described in 
`https://www.terraform.io/docs/providers/aws/index.html`

For example:
```
terraform plan \
  -var 'access_key=foo' \
  -var 'secret_key=bar'

terraform apply \
  -var 'access_key=foo' \
  -var 'secret_key=bar'
```

