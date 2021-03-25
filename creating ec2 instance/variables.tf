variable "public_key" {
  description = "Public key path"
  default = "ssh-rsa (public key)" 
}

variable "AMI_ID" {
    type    = string
    default = "ami-01c835443b86fe988"
}

variable "AWS_REGION" {
default = "eu-west-2"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}
