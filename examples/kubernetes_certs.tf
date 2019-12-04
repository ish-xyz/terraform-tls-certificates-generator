module "init-ca" {
    source 		= "github.com/ishxyz/tf_cert_generator"
    cn			= "CA"
    org			= "aws-k8s-lab-init-CA"
    ou			= "aws-k8s-lab"
    country		= "United Kindgom"
    location		= "London"
    validity_period	= 8760
}

module "admin" {
    source 		= "github.com/ishxyz/tf_cert_generator"
    cn			= "admin"
    org			= "system:masters"
    ou			= "aws-k8s-lab"
    ca_cert		= module.init-ca.ca_cert
    ca_key		= module.init-ca.ca_key
    country		= "United Kindgom"
    location		= "London"
    validity_period	= 8760
}

module "kube-controller-manager" {
    source 		= "github.com/ishxyz/tf_cert_generator"
    cn			= "system:kube-controller-manager"
    org			= "system:kube-controller-manager"
    ou			= "aws-k8s-lab"
    ca_cert		= module.init-ca.ca_cert
    ca_key		= module.init-ca.ca_key
    country		= "United Kindgom"
    location		= "London"
    validity_period	= 8760
}

module "kube-proxy" {
    source 		= "github.com/ishxyz/tf_cert_generator"
    cn			= "system:kube-proxy"
    org			= "system:kube-proxy"
    ou			= "aws-k8s-lab"
    ca_cert		= module.init-ca.ca_cert
    ca_key		= module.init-ca.ca_key
    country		= "United Kindgom"
    location		= "London"
    validity_period	= 8760
}

module "kube-scheduler" {
    source 		= "github.com/ishxyz/tf_cert_generator"
    cn			= "system:kube-scheduler"
    org			= "system:kube-scheduler"
    ou			= "aws-k8s-lab"
    ca_cert		= module.init-ca.ca_cert
    ca_key		= module.init-ca.ca_key
    country		= "United Kindgom"
    location		= "London"
    validity_period	= 8760
}

module "service-accounts" {
    source 		= "github.com/ishxyz/tf_cert_generator"
    cn			= "service-accounts"
    org			= "Kubernetes"
    ou			= "aws-k8s-lab"
    ca_cert		= module.init-ca.ca_cert
    ca_key		= module.init-ca.ca_key
    country		= "United Kindgom"
    location		= "London"
    validity_period	= 8760
}

