---
permalink: /1.27/networking/v1/network/
---

# networking.v1.network

"Network represent a logical network on the K8s Cluster. This logical network depends on the host networking setup on cluster nodes."

## Index

* [`fn new(name)`](#fn-new)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(annotations)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(annotations)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(clusterName)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(creationTimestamp)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(deletionTimestamp)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(finalizers)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(finalizers)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(generateName)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(generation)`](#fn-metadatawithgeneration)
  * [`fn withLabels(labels)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(labels)`](#fn-metadatawithlabelsmixin)
  * [`fn withName(name)`](#fn-metadatawithname)
  * [`fn withNamespace(namespace)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(ownerReferences)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(ownerReferences)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(resourceVersion)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(selfLink)`](#fn-metadatawithselflink)
  * [`fn withUid(uid)`](#fn-metadatawithuid)
* [`obj spec`](#obj-spec)
  * [`fn withExternalDHCP4(externalDHCP4)`](#fn-specwithexternaldhcp4)
  * [`fn withGateway4(gateway4)`](#fn-specwithgateway4)
  * [`fn withNetworkLifecycle(networkLifecycle)`](#fn-specwithnetworklifecycle)
  * [`fn withProvider(provider)`](#fn-specwithprovider)
  * [`fn withRoutes(routes)`](#fn-specwithroutes)
  * [`fn withRoutesMixin(routes)`](#fn-specwithroutesmixin)
  * [`fn withType(type)`](#fn-specwithtype)
  * [`obj spec.dnsConfig`](#obj-specdnsconfig)
    * [`fn withNameservers(nameservers)`](#fn-specdnsconfigwithnameservers)
    * [`fn withNameserversMixin(nameservers)`](#fn-specdnsconfigwithnameserversmixin)
    * [`fn withSearches(searches)`](#fn-specdnsconfigwithsearches)
    * [`fn withSearchesMixin(searches)`](#fn-specdnsconfigwithsearchesmixin)
  * [`obj spec.l2NetworkConfig`](#obj-specl2networkconfig)
    * [`fn withPrefixLength4(prefixLength4)`](#fn-specl2networkconfigwithprefixlength4)
    * [`fn withVlanID(vlanID)`](#fn-specl2networkconfigwithvlanid)
  * [`obj spec.nodeInterfaceMatcher`](#obj-specnodeinterfacematcher)
    * [`fn withInterfaceName(interfaceName)`](#fn-specnodeinterfacematcherwithinterfacename)
  * [`obj spec.parametersRef`](#obj-specparametersref)
    * [`fn withGroup(group)`](#fn-specparametersrefwithgroup)
    * [`fn withKind(kind)`](#fn-specparametersrefwithkind)
    * [`fn withName(name)`](#fn-specparametersrefwithname)
    * [`fn withNamespace(namespace)`](#fn-specparametersrefwithnamespace)
  * [`obj spec.routes`](#obj-specroutes)
    * [`fn withTo(to)`](#fn-specrouteswithto)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of Network

## obj metadata

"ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create."

### fn metadata.withAnnotations

```ts
withAnnotations(annotations)
```

"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"

### fn metadata.withAnnotationsMixin

```ts
withAnnotationsMixin(annotations)
```

"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"

**Note:** This function appends passed data to existing values

### fn metadata.withClusterName

```ts
withClusterName(clusterName)
```

"The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request."

### fn metadata.withCreationTimestamp

```ts
withCreationTimestamp(creationTimestamp)
```

"Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers."

### fn metadata.withDeletionGracePeriodSeconds

```ts
withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)
```

"Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."

### fn metadata.withDeletionTimestamp

```ts
withDeletionTimestamp(deletionTimestamp)
```

"Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers."

### fn metadata.withFinalizers

```ts
withFinalizers(finalizers)
```

"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."

### fn metadata.withFinalizersMixin

```ts
withFinalizersMixin(finalizers)
```

"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."

**Note:** This function appends passed data to existing values

### fn metadata.withGenerateName

```ts
withGenerateName(generateName)
```

"GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency"

### fn metadata.withGeneration

```ts
withGeneration(generation)
```

"A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."

### fn metadata.withLabels

```ts
withLabels(labels)
```

"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"

### fn metadata.withLabelsMixin

```ts
withLabelsMixin(labels)
```

"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"

**Note:** This function appends passed data to existing values

### fn metadata.withName

```ts
withName(name)
```

"Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names"

### fn metadata.withNamespace

```ts
withNamespace(namespace)
```

"Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces"

### fn metadata.withOwnerReferences

```ts
withOwnerReferences(ownerReferences)
```

"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."

### fn metadata.withOwnerReferencesMixin

```ts
withOwnerReferencesMixin(ownerReferences)
```

"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."

**Note:** This function appends passed data to existing values

### fn metadata.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

"An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency"

### fn metadata.withSelfLink

```ts
withSelfLink(selfLink)
```

"SelfLink is a URL representing this object. Populated by the system. Read-only.\n\nDEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release."

### fn metadata.withUid

```ts
withUid(uid)
```

"UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids"

## obj spec

"NetworkSpec contains the specifications for network object"

### fn spec.withExternalDHCP4

```ts
withExternalDHCP4(externalDHCP4)
```

"ExternalDHCP4 indicates whether the IPAM is static or allocation by the external DHCP server"

### fn spec.withGateway4

```ts
withGateway4(gateway4)
```

"Gateway4 defines the gateway IPv4 address for the network. Required if ExternalDHCP4 is false or not set on L2 type network."

### fn spec.withNetworkLifecycle

```ts
withNetworkLifecycle(networkLifecycle)
```

"NetworkLifecycle specifies who manages the lifecycle of the network. This field can only be used when L2NetworkConfig.VlanID is specified. Otherwise the value will be ignored. If L2NetworkConfig.VlanID is specified and this field is empty, the value is assumed to be AnthosManaged."

### fn spec.withProvider

```ts
withProvider(provider)
```

"Provider specifies the provider implementing this network, e.g. \"GKE\"."

### fn spec.withRoutes

```ts
withRoutes(routes)
```

"Routes contains a list of routes for the network."

### fn spec.withRoutesMixin

```ts
withRoutesMixin(routes)
```

"Routes contains a list of routes for the network."

**Note:** This function appends passed data to existing values

### fn spec.withType

```ts
withType(type)
```

"Type defines type of network. Valid options include: L2, L3, Device. L2 network type enables L2 connectivity on the network. L3 network type enables L3 connectivity on the network. Device network type enables direct device access on the network."

## obj spec.dnsConfig

"Specifies the DNS configuration of the network. Required if ExternalDHCP4 is false or not set on L2 type network."

### fn spec.dnsConfig.withNameservers

```ts
withNameservers(nameservers)
```

"A list of nameserver IP addresses. Duplicated nameservers will be removed."

### fn spec.dnsConfig.withNameserversMixin

```ts
withNameserversMixin(nameservers)
```

"A list of nameserver IP addresses. Duplicated nameservers will be removed."

**Note:** This function appends passed data to existing values

### fn spec.dnsConfig.withSearches

```ts
withSearches(searches)
```

"A list of DNS search domains for host-name lookup. Duplicated search paths will be removed."

### fn spec.dnsConfig.withSearchesMixin

```ts
withSearchesMixin(searches)
```

"A list of DNS search domains for host-name lookup. Duplicated search paths will be removed."

**Note:** This function appends passed data to existing values

## obj spec.l2NetworkConfig

"L2NetworkConfig includes all the network config related to L2 type network"

### fn spec.l2NetworkConfig.withPrefixLength4

```ts
withPrefixLength4(prefixLength4)
```

"PrefixLength4 denotes the IPv4 prefix length of the range corresponding to the network. It is used to assign IPs to the pods for multi-networking. This field is required when IPAM is handled internally and dynamically via CCC. It's disallowed for other cases. For static IP, the prefix length is set as part of the address in NetworkInterface object."

### fn spec.l2NetworkConfig.withVlanID

```ts
withVlanID(vlanID)
```

"VlanID is the vlan ID used for the network. If unspecified, vlan tagging is not enabled."

## obj spec.nodeInterfaceMatcher

"NodeInterfaceMatcher defines the matcher to discover the corresponding node interface associated with the network. This field is required for L2 network."

### fn spec.nodeInterfaceMatcher.withInterfaceName

```ts
withInterfaceName(interfaceName)
```

"InterfaceName specifies the interface name to search on the node."

## obj spec.parametersRef

"ParametersRef is a reference to a resource that contains vendor or implementation specific configurations for the network."

### fn spec.parametersRef.withGroup

```ts
withGroup(group)
```

"Group is the API group of k8s resource, e.g. \"networking.k8s.io\"."

### fn spec.parametersRef.withKind

```ts
withKind(kind)
```

"Kind is kind of the referent, e.g. \"networkpolicy\"."

### fn spec.parametersRef.withName

```ts
withName(name)
```

"Name is the name of the resource object."

### fn spec.parametersRef.withNamespace

```ts
withNamespace(namespace)
```

"Namespace is the namespace of the referent. This field is required when referring to a Namespace-scoped resource and MUST be unset when referring to a Cluster-scoped resource."

## obj spec.routes

"Routes contains a list of routes for the network."

### fn spec.routes.withTo

```ts
withTo(to)
```

"To defines a destination IPv4 block in CIDR annotation. e.g. 192.168.0.0/24. The CIDR 0.0.0.0/0 will be rejected."