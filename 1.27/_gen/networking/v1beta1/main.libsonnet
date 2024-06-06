{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='v1beta1', url='', help=''),
  frontendConfig: (import 'frontendConfig.libsonnet'),
  managedCertificate: (import 'managedCertificate.libsonnet'),
  serviceAttachment: (import 'serviceAttachment.libsonnet'),
  serviceNetworkEndpointGroup: (import 'serviceNetworkEndpointGroup.libsonnet'),
}
