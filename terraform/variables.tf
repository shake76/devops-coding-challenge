variable control_cidr {
  description = "CIDR for maintenance: inbound traffic will be allowed from this IPs"
}

variable default_keypair_public_key {
  description = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLbx9nRVjAqMwQi+i8aYE2ZsuG51qJ76PYCXOz+F+Y63Q1oNseO/g1jp+bQAXnat9uzjt2gRXNwdDHoVD320WJpog+z3lnTgBSlnR2nLJcoz+1+zAf0vlNPFKQjeawFhV/o+2Um88MKHm2l0+oX8WASAYa6rZyGHeHmkOEOF8AJV/8cch60H2bVSOD4GPLw2Xfp6Edv434KntZc2pLd5+vPN6LGxs8ZeyfnRwZs97BoWaGY8B3KG7XnxqETTHxNKfv8utuO9/UlD0aRS1fIyjPSsXZvRJ1xK9LZ5m9dcb5CEPjh9DO4T33/hF6STI7ewSlsamefbB7HnKT1U4FQprz poc@AR-IT11816"
}

variable default_keypair_name {
  description = "Name of the KeyPair used for all nodes"
  default = "k8s-challengue"
}


variable vpc_name {
  description = "Name of the VPC"
  default = "kubernetes"
}

variable elb_name {
  description = "Name of the ELB for Kubernetes API"
  default = "kubernetes"
}

variable owner {
  default = "Kubernetes"
}

variable ansibleFilter {
  description = "`ansibleFilter` tag value added to all instances, to enable instance filtering in Ansible dynamic inventory"
  default = "Kubernetes01" 
}

# Networking setup
variable region {
  default = "us-east-1"
}

variable zone {
  default = "us-east-1a"
}

### VARIABLES BELOW MUST NOT BE CHANGED ###

variable vpc_cidr {
  default = "10.43.0.0/16"
}

variable kubernetes_pod_cidr {
  default = "10.200.0.0/16"
}


# Instances Setup
variable amis {
  description = "Default AMIs to use for nodes depending on the region"
  type = "map"
  default = {
    ap-northeast-1 = "ami-0567c164"
    ap-southeast-1 = "ami-a1288ec2"
    cn-north-1 = "ami-d9f226b4"
    eu-central-1 = "ami-8504fdea"
    eu-west-1 = "ami-0d77397e"
    sa-east-1 = "ami-e93da085"
    us-east-1 = "ami-40d28157"
    us-west-1 = "ami-6e165d0e"
    us-west-2 = "ami-a9d276c9"
  }
}
variable default_instance_user {
  default = "ubuntu"
}

variable etcd_instance_type {
  default = "t2.micro"
}
variable controller_instance_type {
  default = "t2.micro"
}
variable worker_instance_type {
  default = "t2.micro"
}


variable kubernetes_cluster_dns {
  default = "10.31.0.1"
}
