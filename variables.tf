variable "key_filename" {
    description = "Absolute or relative path of the filename that will be generated"
    type = string
}

variable "cert_filename" {
    description = "Absolute or relative path of the filename that will be generated"
    type = string
}

variable "validity_period" {
    description = "Validity Period in hours of both the CA and the certificate"
    type = number
    default = 8760
}

variable "org" {
    description = "Certificate Organization"
    type = string
}

variable "cn" {
    description = "Certificate Common Name"
    type = string
}

variable "location" {
    description = "Certificate Location"
    type = string
}

variable "country" {
    description = "Certificate Country"
    type = string
}

variable "ou" {
    description = "Certificate Organizational Unit"
    type = string
}

variable "ca_key" {
    type = string
    description = "If default the module will create a new CA"
    default = "generated"
}

variable "ca_cert" {
    type = string
    description = "If default the module will create a new CA"
    default = "generated"
}