variable "project" {
  type = string
}
variable "environment" {
  type = string
}

variable "sg_name" {
  type = string
}
variable "sg_description" {  
  type = string
}
variable "vpc_id" {
  type = string
}
variable "common_tags" {
  type = map
}
variable "out_bound" {
  type = list
  default = [
    {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]  
}

## left to the users
variable "in_bound" {
  type = list
  default = []
   
}