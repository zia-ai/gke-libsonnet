{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='v1', url='', help=''),
  gkeNetworkParamSet: (import 'gkeNetworkParamSet.libsonnet'),
  managedCertificate: (import 'managedCertificate.libsonnet'),
  network: (import 'network.libsonnet'),
  serviceAttachment: (import 'serviceAttachment.libsonnet'),
}
