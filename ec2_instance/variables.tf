variable "public_key" {
  description = "Public key path"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCfiVqSujCTWKzVuq6uHxPGT86tMO+qB2xXQnW7ogk6PCAcTZSiGk/zjVLyd3I+jzXiNUHRJIuJhV6/ZaZfpp1fXutgNhoc9pvdGv5+FGsadL/RVAhBiMEMfL9+Dzhuf5nv43LFDTSAZkR9aJ6murA0bvrgz415nXP+pYYBH0xQt2tJ5HjiqxJfl1ngMr3OaPVqSPP0UlnhAoxm3/NIAt+l45hRzttv67fITMRZJHUGUmqGl3ZKe/ZhbGO5eJy9MMPtiT+nWSy0Hml5ihbE0AWfNExpC/WK3f/FBFq9z9WC2bvZaW0tpcuokSKI2XlMnuLHKrWA8WJY/mgJL/5pLGBpnUVXPnleeIKWJCW59x9m8IF70tyQLBVkJFCw4qKpUbWTk7hbfvDYVIPuGF8u1TvCaAOkSsvMJSrswzxLYM3vVgg00k/MVl+sVKvOirs468lVLz2R8KUVi+tNxbxSXHGHOEmjiX3uEhLL/nxn0X7WscZlh03sSVEUBFdhYl9BNW8= avinash@avi" 
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
