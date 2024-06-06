{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='gke', url='github.com/zia-ai/gke-libsonnet/1.27/main.libsonnet', help=''),
  auto:: (import '_gen/auto/main.libsonnet'),
  hub:: (import '_gen/hub/main.libsonnet'),
  internal:: (import '_gen/internal/main.libsonnet'),
  networking:: (import '_gen/networking/main.libsonnet'),
  nodemanagement:: (import '_gen/nodemanagement/main.libsonnet'),
  warden:: (import '_gen/warden/main.libsonnet'),
}
