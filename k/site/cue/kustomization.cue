package config

apiVersion: "kustomize.config.k8s.io/v1beta1"
kind:       "Kustomization"

bases: [
	"../base",
]

patches: [{
	path: "patch-cluster-issuer.yaml"
	target: {
		kind: "ClusterIssuer"
		name: "letsencrypt-staging"
	}
}, {
	path: "patch-cluster-issuer.yaml"
	target: {
		kind: "ClusterIssuer"
		name: "letsencrypt-prod"
	}
}, {
	path: "patch-certificate.yaml"
	target: kind: "Certificate"
}]