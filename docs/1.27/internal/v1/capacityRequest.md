---
permalink: /1.27/internal/v1/capacityRequest/
---

# internal.v1.capacityRequest

"CapacityRequest is a way to express additional capacity that we would like to reserve in the cluster. Cluster Autoscaler can use this information in its calculations and signal if the additional capacity is available in the cluster or proactively add capacity if needed."

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
  * [`obj spec.capacity`](#obj-speccapacity)
    * [`fn withActiveDeadlineSeconds(activeDeadlineSeconds)`](#fn-speccapacitywithactivedeadlineseconds)
    * [`fn withAutomountServiceAccountToken(automountServiceAccountToken)`](#fn-speccapacitywithautomountserviceaccounttoken)
    * [`fn withContainers(containers)`](#fn-speccapacitywithcontainers)
    * [`fn withContainersMixin(containers)`](#fn-speccapacitywithcontainersmixin)
    * [`fn withDnsPolicy(dnsPolicy)`](#fn-speccapacitywithdnspolicy)
    * [`fn withEnableServiceLinks(enableServiceLinks)`](#fn-speccapacitywithenableservicelinks)
    * [`fn withEphemeralContainers(ephemeralContainers)`](#fn-speccapacitywithephemeralcontainers)
    * [`fn withEphemeralContainersMixin(ephemeralContainers)`](#fn-speccapacitywithephemeralcontainersmixin)
    * [`fn withHostAliases(hostAliases)`](#fn-speccapacitywithhostaliases)
    * [`fn withHostAliasesMixin(hostAliases)`](#fn-speccapacitywithhostaliasesmixin)
    * [`fn withHostIPC(hostIPC)`](#fn-speccapacitywithhostipc)
    * [`fn withHostNetwork(hostNetwork)`](#fn-speccapacitywithhostnetwork)
    * [`fn withHostPID(hostPID)`](#fn-speccapacitywithhostpid)
    * [`fn withHostname(hostname)`](#fn-speccapacitywithhostname)
    * [`fn withImagePullSecrets(imagePullSecrets)`](#fn-speccapacitywithimagepullsecrets)
    * [`fn withImagePullSecretsMixin(imagePullSecrets)`](#fn-speccapacitywithimagepullsecretsmixin)
    * [`fn withInitContainers(initContainers)`](#fn-speccapacitywithinitcontainers)
    * [`fn withInitContainersMixin(initContainers)`](#fn-speccapacitywithinitcontainersmixin)
    * [`fn withNodeName(nodeName)`](#fn-speccapacitywithnodename)
    * [`fn withNodeSelector(nodeSelector)`](#fn-speccapacitywithnodeselector)
    * [`fn withNodeSelectorMixin(nodeSelector)`](#fn-speccapacitywithnodeselectormixin)
    * [`fn withOverhead(overhead)`](#fn-speccapacitywithoverhead)
    * [`fn withOverheadMixin(overhead)`](#fn-speccapacitywithoverheadmixin)
    * [`fn withPreemptionPolicy(preemptionPolicy)`](#fn-speccapacitywithpreemptionpolicy)
    * [`fn withPriority(priority)`](#fn-speccapacitywithpriority)
    * [`fn withPriorityClassName(priorityClassName)`](#fn-speccapacitywithpriorityclassname)
    * [`fn withReadinessGates(readinessGates)`](#fn-speccapacitywithreadinessgates)
    * [`fn withReadinessGatesMixin(readinessGates)`](#fn-speccapacitywithreadinessgatesmixin)
    * [`fn withRestartPolicy(restartPolicy)`](#fn-speccapacitywithrestartpolicy)
    * [`fn withRuntimeClassName(runtimeClassName)`](#fn-speccapacitywithruntimeclassname)
    * [`fn withSchedulerName(schedulerName)`](#fn-speccapacitywithschedulername)
    * [`fn withServiceAccount(serviceAccount)`](#fn-speccapacitywithserviceaccount)
    * [`fn withServiceAccountName(serviceAccountName)`](#fn-speccapacitywithserviceaccountname)
    * [`fn withShareProcessNamespace(shareProcessNamespace)`](#fn-speccapacitywithshareprocessnamespace)
    * [`fn withSubdomain(subdomain)`](#fn-speccapacitywithsubdomain)
    * [`fn withTerminationGracePeriodSeconds(terminationGracePeriodSeconds)`](#fn-speccapacitywithterminationgraceperiodseconds)
    * [`fn withTolerations(tolerations)`](#fn-speccapacitywithtolerations)
    * [`fn withTolerationsMixin(tolerations)`](#fn-speccapacitywithtolerationsmixin)
    * [`fn withTopologySpreadConstraints(topologySpreadConstraints)`](#fn-speccapacitywithtopologyspreadconstraints)
    * [`fn withTopologySpreadConstraintsMixin(topologySpreadConstraints)`](#fn-speccapacitywithtopologyspreadconstraintsmixin)
    * [`fn withVolumes(volumes)`](#fn-speccapacitywithvolumes)
    * [`fn withVolumesMixin(volumes)`](#fn-speccapacitywithvolumesmixin)
    * [`obj spec.capacity.affinity`](#obj-speccapacityaffinity)
      * [`obj spec.capacity.affinity.nodeAffinity`](#obj-speccapacityaffinitynodeaffinity)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitynodeaffinitywithpreferredduringschedulingignoredduringexecution)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitynodeaffinitywithpreferredduringschedulingignoredduringexecutionmixin)
        * [`obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution`](#obj-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecution)
          * [`fn withWeight(weight)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionwithweight)
          * [`obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference`](#obj-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreference)
            * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencewithmatchexpressions)
            * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencewithmatchexpressionsmixin)
            * [`fn withMatchFields(matchFields)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencewithmatchfields)
            * [`fn withMatchFieldsMixin(matchFields)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencewithmatchfieldsmixin)
            * [`obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchExpressions`](#obj-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchexpressions)
              * [`fn withKey(key)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchexpressionswithkey)
              * [`fn withOperator(operator)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchexpressionswithoperator)
              * [`fn withValues(values)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchexpressionswithvalues)
              * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchexpressionswithvaluesmixin)
            * [`obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchFields`](#obj-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchfields)
              * [`fn withKey(key)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchfieldswithkey)
              * [`fn withOperator(operator)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchfieldswithoperator)
              * [`fn withValues(values)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchfieldswithvalues)
              * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitynodeaffinitypreferredduringschedulingignoredduringexecutionpreferencematchfieldswithvaluesmixin)
        * [`obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution`](#obj-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecution)
          * [`fn withNodeSelectorTerms(nodeSelectorTerms)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionwithnodeselectorterms)
          * [`fn withNodeSelectorTermsMixin(nodeSelectorTerms)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionwithnodeselectortermsmixin)
          * [`obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms`](#obj-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectorterms)
            * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermswithmatchexpressions)
            * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermswithmatchexpressionsmixin)
            * [`fn withMatchFields(matchFields)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermswithmatchfields)
            * [`fn withMatchFieldsMixin(matchFields)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermswithmatchfieldsmixin)
            * [`obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchExpressions`](#obj-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchexpressions)
              * [`fn withKey(key)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchexpressionswithkey)
              * [`fn withOperator(operator)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchexpressionswithoperator)
              * [`fn withValues(values)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchexpressionswithvalues)
              * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchexpressionswithvaluesmixin)
            * [`obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchFields`](#obj-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchfields)
              * [`fn withKey(key)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchfieldswithkey)
              * [`fn withOperator(operator)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchfieldswithoperator)
              * [`fn withValues(values)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchfieldswithvalues)
              * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionnodeselectortermsmatchfieldswithvaluesmixin)
      * [`obj spec.capacity.affinity.podAffinity`](#obj-speccapacityaffinitypodaffinity)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodaffinitywithpreferredduringschedulingignoredduringexecution)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodaffinitywithpreferredduringschedulingignoredduringexecutionmixin)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodaffinitywithrequiredduringschedulingignoredduringexecution)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodaffinitywithrequiredduringschedulingignoredduringexecutionmixin)
        * [`obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution`](#obj-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecution)
          * [`fn withWeight(weight)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionwithweight)
          * [`obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm`](#obj-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinityterm)
            * [`fn withNamespaces(namespaces)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermwithnamespaces)
            * [`fn withNamespacesMixin(namespaces)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermwithnamespacesmixin)
            * [`fn withTopologyKey(topologyKey)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermwithtopologykey)
            * [`obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector`](#obj-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselector)
              * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchexpressions)
              * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchexpressionsmixin)
              * [`fn withMatchLabels(matchLabels)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchlabels)
              * [`fn withMatchLabelsMixin(matchLabels)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchlabelsmixin)
              * [`obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions`](#obj-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressions)
                * [`fn withKey(key)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithkey)
                * [`fn withOperator(operator)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithoperator)
                * [`fn withValues(values)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithvalues)
                * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitypodaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithvaluesmixin)
        * [`obj spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution`](#obj-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecution)
          * [`fn withNamespaces(namespaces)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionwithnamespaces)
          * [`fn withNamespacesMixin(namespaces)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionwithnamespacesmixin)
          * [`fn withTopologyKey(topologyKey)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionwithtopologykey)
          * [`obj spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector`](#obj-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselector)
            * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchexpressions)
            * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchexpressionsmixin)
            * [`fn withMatchLabels(matchLabels)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchlabels)
            * [`fn withMatchLabelsMixin(matchLabels)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchlabelsmixin)
            * [`obj spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions`](#obj-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressions)
              * [`fn withKey(key)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithkey)
              * [`fn withOperator(operator)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithoperator)
              * [`fn withValues(values)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithvalues)
              * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitypodaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithvaluesmixin)
      * [`obj spec.capacity.affinity.podAntiAffinity`](#obj-speccapacityaffinitypodantiaffinity)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodantiaffinitywithpreferredduringschedulingignoredduringexecution)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodantiaffinitywithpreferredduringschedulingignoredduringexecutionmixin)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodantiaffinitywithrequiredduringschedulingignoredduringexecution)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-speccapacityaffinitypodantiaffinitywithrequiredduringschedulingignoredduringexecutionmixin)
        * [`obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution`](#obj-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecution)
          * [`fn withWeight(weight)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionwithweight)
          * [`obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm`](#obj-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinityterm)
            * [`fn withNamespaces(namespaces)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermwithnamespaces)
            * [`fn withNamespacesMixin(namespaces)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermwithnamespacesmixin)
            * [`fn withTopologyKey(topologyKey)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermwithtopologykey)
            * [`obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector`](#obj-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselector)
              * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchexpressions)
              * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchexpressionsmixin)
              * [`fn withMatchLabels(matchLabels)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchlabels)
              * [`fn withMatchLabelsMixin(matchLabels)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectorwithmatchlabelsmixin)
              * [`obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions`](#obj-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressions)
                * [`fn withKey(key)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithkey)
                * [`fn withOperator(operator)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithoperator)
                * [`fn withValues(values)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithvalues)
                * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitypodantiaffinitypreferredduringschedulingignoredduringexecutionpodaffinitytermlabelselectormatchexpressionswithvaluesmixin)
        * [`obj spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution`](#obj-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecution)
          * [`fn withNamespaces(namespaces)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionwithnamespaces)
          * [`fn withNamespacesMixin(namespaces)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionwithnamespacesmixin)
          * [`fn withTopologyKey(topologyKey)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionwithtopologykey)
          * [`obj spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector`](#obj-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselector)
            * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchexpressions)
            * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchexpressionsmixin)
            * [`fn withMatchLabels(matchLabels)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchlabels)
            * [`fn withMatchLabelsMixin(matchLabels)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectorwithmatchlabelsmixin)
            * [`obj spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions`](#obj-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressions)
              * [`fn withKey(key)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithkey)
              * [`fn withOperator(operator)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithoperator)
              * [`fn withValues(values)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithvalues)
              * [`fn withValuesMixin(values)`](#fn-speccapacityaffinitypodantiaffinityrequiredduringschedulingignoredduringexecutionlabelselectormatchexpressionswithvaluesmixin)
    * [`obj spec.capacity.containers`](#obj-speccapacitycontainers)
      * [`fn withArgs(args)`](#fn-speccapacitycontainerswithargs)
      * [`fn withArgsMixin(args)`](#fn-speccapacitycontainerswithargsmixin)
      * [`fn withCommand(command)`](#fn-speccapacitycontainerswithcommand)
      * [`fn withCommandMixin(command)`](#fn-speccapacitycontainerswithcommandmixin)
      * [`fn withEnv(env)`](#fn-speccapacitycontainerswithenv)
      * [`fn withEnvFrom(envFrom)`](#fn-speccapacitycontainerswithenvfrom)
      * [`fn withEnvFromMixin(envFrom)`](#fn-speccapacitycontainerswithenvfrommixin)
      * [`fn withEnvMixin(env)`](#fn-speccapacitycontainerswithenvmixin)
      * [`fn withImage(image)`](#fn-speccapacitycontainerswithimage)
      * [`fn withImagePullPolicy(imagePullPolicy)`](#fn-speccapacitycontainerswithimagepullpolicy)
      * [`fn withName(name)`](#fn-speccapacitycontainerswithname)
      * [`fn withPorts(ports)`](#fn-speccapacitycontainerswithports)
      * [`fn withPortsMixin(ports)`](#fn-speccapacitycontainerswithportsmixin)
      * [`fn withStdin(stdin)`](#fn-speccapacitycontainerswithstdin)
      * [`fn withStdinOnce(stdinOnce)`](#fn-speccapacitycontainerswithstdinonce)
      * [`fn withTerminationMessagePath(terminationMessagePath)`](#fn-speccapacitycontainerswithterminationmessagepath)
      * [`fn withTerminationMessagePolicy(terminationMessagePolicy)`](#fn-speccapacitycontainerswithterminationmessagepolicy)
      * [`fn withTty(tty)`](#fn-speccapacitycontainerswithtty)
      * [`fn withVolumeDevices(volumeDevices)`](#fn-speccapacitycontainerswithvolumedevices)
      * [`fn withVolumeDevicesMixin(volumeDevices)`](#fn-speccapacitycontainerswithvolumedevicesmixin)
      * [`fn withVolumeMounts(volumeMounts)`](#fn-speccapacitycontainerswithvolumemounts)
      * [`fn withVolumeMountsMixin(volumeMounts)`](#fn-speccapacitycontainerswithvolumemountsmixin)
      * [`fn withWorkingDir(workingDir)`](#fn-speccapacitycontainerswithworkingdir)
      * [`obj spec.capacity.containers.env`](#obj-speccapacitycontainersenv)
        * [`fn withName(name)`](#fn-speccapacitycontainersenvwithname)
        * [`fn withValue(value)`](#fn-speccapacitycontainersenvwithvalue)
        * [`obj spec.capacity.containers.env.valueFrom`](#obj-speccapacitycontainersenvvaluefrom)
          * [`obj spec.capacity.containers.env.valueFrom.configMapKeyRef`](#obj-speccapacitycontainersenvvaluefromconfigmapkeyref)
            * [`fn withKey(key)`](#fn-speccapacitycontainersenvvaluefromconfigmapkeyrefwithkey)
            * [`fn withName(name)`](#fn-speccapacitycontainersenvvaluefromconfigmapkeyrefwithname)
            * [`fn withOptional(optional)`](#fn-speccapacitycontainersenvvaluefromconfigmapkeyrefwithoptional)
          * [`obj spec.capacity.containers.env.valueFrom.fieldRef`](#obj-speccapacitycontainersenvvaluefromfieldref)
            * [`fn withApiVersion(apiVersion)`](#fn-speccapacitycontainersenvvaluefromfieldrefwithapiversion)
            * [`fn withFieldPath(fieldPath)`](#fn-speccapacitycontainersenvvaluefromfieldrefwithfieldpath)
          * [`obj spec.capacity.containers.env.valueFrom.resourceFieldRef`](#obj-speccapacitycontainersenvvaluefromresourcefieldref)
            * [`fn withContainerName(containerName)`](#fn-speccapacitycontainersenvvaluefromresourcefieldrefwithcontainername)
            * [`fn withDivisor(divisor)`](#fn-speccapacitycontainersenvvaluefromresourcefieldrefwithdivisor)
            * [`fn withResource(resource)`](#fn-speccapacitycontainersenvvaluefromresourcefieldrefwithresource)
          * [`obj spec.capacity.containers.env.valueFrom.secretKeyRef`](#obj-speccapacitycontainersenvvaluefromsecretkeyref)
            * [`fn withKey(key)`](#fn-speccapacitycontainersenvvaluefromsecretkeyrefwithkey)
            * [`fn withName(name)`](#fn-speccapacitycontainersenvvaluefromsecretkeyrefwithname)
            * [`fn withOptional(optional)`](#fn-speccapacitycontainersenvvaluefromsecretkeyrefwithoptional)
      * [`obj spec.capacity.containers.envFrom`](#obj-speccapacitycontainersenvfrom)
        * [`fn withPrefix(prefix)`](#fn-speccapacitycontainersenvfromwithprefix)
        * [`obj spec.capacity.containers.envFrom.configMapRef`](#obj-speccapacitycontainersenvfromconfigmapref)
          * [`fn withName(name)`](#fn-speccapacitycontainersenvfromconfigmaprefwithname)
          * [`fn withOptional(optional)`](#fn-speccapacitycontainersenvfromconfigmaprefwithoptional)
        * [`obj spec.capacity.containers.envFrom.secretRef`](#obj-speccapacitycontainersenvfromsecretref)
          * [`fn withName(name)`](#fn-speccapacitycontainersenvfromsecretrefwithname)
          * [`fn withOptional(optional)`](#fn-speccapacitycontainersenvfromsecretrefwithoptional)
      * [`obj spec.capacity.containers.lifecycle`](#obj-speccapacitycontainerslifecycle)
        * [`obj spec.capacity.containers.lifecycle.postStart`](#obj-speccapacitycontainerslifecyclepoststart)
          * [`obj spec.capacity.containers.lifecycle.postStart.exec`](#obj-speccapacitycontainerslifecyclepoststartexec)
            * [`fn withCommand(command)`](#fn-speccapacitycontainerslifecyclepoststartexecwithcommand)
            * [`fn withCommandMixin(command)`](#fn-speccapacitycontainerslifecyclepoststartexecwithcommandmixin)
          * [`obj spec.capacity.containers.lifecycle.postStart.httpGet`](#obj-speccapacitycontainerslifecyclepoststarthttpget)
            * [`fn withHost(host)`](#fn-speccapacitycontainerslifecyclepoststarthttpgetwithhost)
            * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacitycontainerslifecyclepoststarthttpgetwithhttpheaders)
            * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacitycontainerslifecyclepoststarthttpgetwithhttpheadersmixin)
            * [`fn withPath(path)`](#fn-speccapacitycontainerslifecyclepoststarthttpgetwithpath)
            * [`fn withPort(port)`](#fn-speccapacitycontainerslifecyclepoststarthttpgetwithport)
            * [`fn withScheme(scheme)`](#fn-speccapacitycontainerslifecyclepoststarthttpgetwithscheme)
            * [`obj spec.capacity.containers.lifecycle.postStart.httpGet.httpHeaders`](#obj-speccapacitycontainerslifecyclepoststarthttpgethttpheaders)
              * [`fn withName(name)`](#fn-speccapacitycontainerslifecyclepoststarthttpgethttpheaderswithname)
              * [`fn withValue(value)`](#fn-speccapacitycontainerslifecyclepoststarthttpgethttpheaderswithvalue)
          * [`obj spec.capacity.containers.lifecycle.postStart.tcpSocket`](#obj-speccapacitycontainerslifecyclepoststarttcpsocket)
            * [`fn withHost(host)`](#fn-speccapacitycontainerslifecyclepoststarttcpsocketwithhost)
            * [`fn withPort(port)`](#fn-speccapacitycontainerslifecyclepoststarttcpsocketwithport)
        * [`obj spec.capacity.containers.lifecycle.preStop`](#obj-speccapacitycontainerslifecycleprestop)
          * [`obj spec.capacity.containers.lifecycle.preStop.exec`](#obj-speccapacitycontainerslifecycleprestopexec)
            * [`fn withCommand(command)`](#fn-speccapacitycontainerslifecycleprestopexecwithcommand)
            * [`fn withCommandMixin(command)`](#fn-speccapacitycontainerslifecycleprestopexecwithcommandmixin)
          * [`obj spec.capacity.containers.lifecycle.preStop.httpGet`](#obj-speccapacitycontainerslifecycleprestophttpget)
            * [`fn withHost(host)`](#fn-speccapacitycontainerslifecycleprestophttpgetwithhost)
            * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacitycontainerslifecycleprestophttpgetwithhttpheaders)
            * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacitycontainerslifecycleprestophttpgetwithhttpheadersmixin)
            * [`fn withPath(path)`](#fn-speccapacitycontainerslifecycleprestophttpgetwithpath)
            * [`fn withPort(port)`](#fn-speccapacitycontainerslifecycleprestophttpgetwithport)
            * [`fn withScheme(scheme)`](#fn-speccapacitycontainerslifecycleprestophttpgetwithscheme)
            * [`obj spec.capacity.containers.lifecycle.preStop.httpGet.httpHeaders`](#obj-speccapacitycontainerslifecycleprestophttpgethttpheaders)
              * [`fn withName(name)`](#fn-speccapacitycontainerslifecycleprestophttpgethttpheaderswithname)
              * [`fn withValue(value)`](#fn-speccapacitycontainerslifecycleprestophttpgethttpheaderswithvalue)
          * [`obj spec.capacity.containers.lifecycle.preStop.tcpSocket`](#obj-speccapacitycontainerslifecycleprestoptcpsocket)
            * [`fn withHost(host)`](#fn-speccapacitycontainerslifecycleprestoptcpsocketwithhost)
            * [`fn withPort(port)`](#fn-speccapacitycontainerslifecycleprestoptcpsocketwithport)
      * [`obj spec.capacity.containers.livenessProbe`](#obj-speccapacitycontainerslivenessprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacitycontainerslivenessprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacitycontainerslivenessprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacitycontainerslivenessprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacitycontainerslivenessprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacitycontainerslivenessprobewithtimeoutseconds)
        * [`obj spec.capacity.containers.livenessProbe.exec`](#obj-speccapacitycontainerslivenessprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacitycontainerslivenessprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacitycontainerslivenessprobeexecwithcommandmixin)
        * [`obj spec.capacity.containers.livenessProbe.httpGet`](#obj-speccapacitycontainerslivenessprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacitycontainerslivenessprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacitycontainerslivenessprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacitycontainerslivenessprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacitycontainerslivenessprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacitycontainerslivenessprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacitycontainerslivenessprobehttpgetwithscheme)
          * [`obj spec.capacity.containers.livenessProbe.httpGet.httpHeaders`](#obj-speccapacitycontainerslivenessprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacitycontainerslivenessprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacitycontainerslivenessprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.containers.livenessProbe.tcpSocket`](#obj-speccapacitycontainerslivenessprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacitycontainerslivenessprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacitycontainerslivenessprobetcpsocketwithport)
      * [`obj spec.capacity.containers.ports`](#obj-speccapacitycontainersports)
        * [`fn withContainerPort(containerPort)`](#fn-speccapacitycontainersportswithcontainerport)
        * [`fn withHostIP(hostIP)`](#fn-speccapacitycontainersportswithhostip)
        * [`fn withHostPort(hostPort)`](#fn-speccapacitycontainersportswithhostport)
        * [`fn withName(name)`](#fn-speccapacitycontainersportswithname)
        * [`fn withProtocol(protocol)`](#fn-speccapacitycontainersportswithprotocol)
      * [`obj spec.capacity.containers.readinessProbe`](#obj-speccapacitycontainersreadinessprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacitycontainersreadinessprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacitycontainersreadinessprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacitycontainersreadinessprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacitycontainersreadinessprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacitycontainersreadinessprobewithtimeoutseconds)
        * [`obj spec.capacity.containers.readinessProbe.exec`](#obj-speccapacitycontainersreadinessprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacitycontainersreadinessprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacitycontainersreadinessprobeexecwithcommandmixin)
        * [`obj spec.capacity.containers.readinessProbe.httpGet`](#obj-speccapacitycontainersreadinessprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacitycontainersreadinessprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacitycontainersreadinessprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacitycontainersreadinessprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacitycontainersreadinessprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacitycontainersreadinessprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacitycontainersreadinessprobehttpgetwithscheme)
          * [`obj spec.capacity.containers.readinessProbe.httpGet.httpHeaders`](#obj-speccapacitycontainersreadinessprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacitycontainersreadinessprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacitycontainersreadinessprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.containers.readinessProbe.tcpSocket`](#obj-speccapacitycontainersreadinessprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacitycontainersreadinessprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacitycontainersreadinessprobetcpsocketwithport)
      * [`obj spec.capacity.containers.resources`](#obj-speccapacitycontainersresources)
        * [`fn withLimits(limits)`](#fn-speccapacitycontainersresourceswithlimits)
        * [`fn withLimitsMixin(limits)`](#fn-speccapacitycontainersresourceswithlimitsmixin)
        * [`fn withRequests(requests)`](#fn-speccapacitycontainersresourceswithrequests)
        * [`fn withRequestsMixin(requests)`](#fn-speccapacitycontainersresourceswithrequestsmixin)
      * [`obj spec.capacity.containers.securityContext`](#obj-speccapacitycontainerssecuritycontext)
        * [`fn withAllowPrivilegeEscalation(allowPrivilegeEscalation)`](#fn-speccapacitycontainerssecuritycontextwithallowprivilegeescalation)
        * [`fn withPrivileged(privileged)`](#fn-speccapacitycontainerssecuritycontextwithprivileged)
        * [`fn withProcMount(procMount)`](#fn-speccapacitycontainerssecuritycontextwithprocmount)
        * [`fn withReadOnlyRootFilesystem(readOnlyRootFilesystem)`](#fn-speccapacitycontainerssecuritycontextwithreadonlyrootfilesystem)
        * [`fn withRunAsGroup(runAsGroup)`](#fn-speccapacitycontainerssecuritycontextwithrunasgroup)
        * [`fn withRunAsNonRoot(runAsNonRoot)`](#fn-speccapacitycontainerssecuritycontextwithrunasnonroot)
        * [`fn withRunAsUser(runAsUser)`](#fn-speccapacitycontainerssecuritycontextwithrunasuser)
        * [`obj spec.capacity.containers.securityContext.capabilities`](#obj-speccapacitycontainerssecuritycontextcapabilities)
          * [`fn withAdd(add)`](#fn-speccapacitycontainerssecuritycontextcapabilitieswithadd)
          * [`fn withAddMixin(add)`](#fn-speccapacitycontainerssecuritycontextcapabilitieswithaddmixin)
          * [`fn withDrop(drop)`](#fn-speccapacitycontainerssecuritycontextcapabilitieswithdrop)
          * [`fn withDropMixin(drop)`](#fn-speccapacitycontainerssecuritycontextcapabilitieswithdropmixin)
        * [`obj spec.capacity.containers.securityContext.seLinuxOptions`](#obj-speccapacitycontainerssecuritycontextselinuxoptions)
          * [`fn withLevel(level)`](#fn-speccapacitycontainerssecuritycontextselinuxoptionswithlevel)
          * [`fn withRole(role)`](#fn-speccapacitycontainerssecuritycontextselinuxoptionswithrole)
          * [`fn withType(type)`](#fn-speccapacitycontainerssecuritycontextselinuxoptionswithtype)
          * [`fn withUser(user)`](#fn-speccapacitycontainerssecuritycontextselinuxoptionswithuser)
        * [`obj spec.capacity.containers.securityContext.windowsOptions`](#obj-speccapacitycontainerssecuritycontextwindowsoptions)
          * [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-speccapacitycontainerssecuritycontextwindowsoptionswithgmsacredentialspec)
          * [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-speccapacitycontainerssecuritycontextwindowsoptionswithgmsacredentialspecname)
          * [`fn withRunAsUserName(runAsUserName)`](#fn-speccapacitycontainerssecuritycontextwindowsoptionswithrunasusername)
      * [`obj spec.capacity.containers.startupProbe`](#obj-speccapacitycontainersstartupprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacitycontainersstartupprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacitycontainersstartupprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacitycontainersstartupprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacitycontainersstartupprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacitycontainersstartupprobewithtimeoutseconds)
        * [`obj spec.capacity.containers.startupProbe.exec`](#obj-speccapacitycontainersstartupprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacitycontainersstartupprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacitycontainersstartupprobeexecwithcommandmixin)
        * [`obj spec.capacity.containers.startupProbe.httpGet`](#obj-speccapacitycontainersstartupprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacitycontainersstartupprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacitycontainersstartupprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacitycontainersstartupprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacitycontainersstartupprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacitycontainersstartupprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacitycontainersstartupprobehttpgetwithscheme)
          * [`obj spec.capacity.containers.startupProbe.httpGet.httpHeaders`](#obj-speccapacitycontainersstartupprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacitycontainersstartupprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacitycontainersstartupprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.containers.startupProbe.tcpSocket`](#obj-speccapacitycontainersstartupprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacitycontainersstartupprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacitycontainersstartupprobetcpsocketwithport)
      * [`obj spec.capacity.containers.volumeDevices`](#obj-speccapacitycontainersvolumedevices)
        * [`fn withDevicePath(devicePath)`](#fn-speccapacitycontainersvolumedeviceswithdevicepath)
        * [`fn withName(name)`](#fn-speccapacitycontainersvolumedeviceswithname)
      * [`obj spec.capacity.containers.volumeMounts`](#obj-speccapacitycontainersvolumemounts)
        * [`fn withMountPath(mountPath)`](#fn-speccapacitycontainersvolumemountswithmountpath)
        * [`fn withMountPropagation(mountPropagation)`](#fn-speccapacitycontainersvolumemountswithmountpropagation)
        * [`fn withName(name)`](#fn-speccapacitycontainersvolumemountswithname)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacitycontainersvolumemountswithreadonly)
        * [`fn withSubPath(subPath)`](#fn-speccapacitycontainersvolumemountswithsubpath)
        * [`fn withSubPathExpr(subPathExpr)`](#fn-speccapacitycontainersvolumemountswithsubpathexpr)
    * [`obj spec.capacity.dnsConfig`](#obj-speccapacitydnsconfig)
      * [`fn withNameservers(nameservers)`](#fn-speccapacitydnsconfigwithnameservers)
      * [`fn withNameserversMixin(nameservers)`](#fn-speccapacitydnsconfigwithnameserversmixin)
      * [`fn withOptions(options)`](#fn-speccapacitydnsconfigwithoptions)
      * [`fn withOptionsMixin(options)`](#fn-speccapacitydnsconfigwithoptionsmixin)
      * [`fn withSearches(searches)`](#fn-speccapacitydnsconfigwithsearches)
      * [`fn withSearchesMixin(searches)`](#fn-speccapacitydnsconfigwithsearchesmixin)
      * [`obj spec.capacity.dnsConfig.options`](#obj-speccapacitydnsconfigoptions)
        * [`fn withName(name)`](#fn-speccapacitydnsconfigoptionswithname)
        * [`fn withValue(value)`](#fn-speccapacitydnsconfigoptionswithvalue)
    * [`obj spec.capacity.ephemeralContainers`](#obj-speccapacityephemeralcontainers)
      * [`fn withArgs(args)`](#fn-speccapacityephemeralcontainerswithargs)
      * [`fn withArgsMixin(args)`](#fn-speccapacityephemeralcontainerswithargsmixin)
      * [`fn withCommand(command)`](#fn-speccapacityephemeralcontainerswithcommand)
      * [`fn withCommandMixin(command)`](#fn-speccapacityephemeralcontainerswithcommandmixin)
      * [`fn withEnv(env)`](#fn-speccapacityephemeralcontainerswithenv)
      * [`fn withEnvFrom(envFrom)`](#fn-speccapacityephemeralcontainerswithenvfrom)
      * [`fn withEnvFromMixin(envFrom)`](#fn-speccapacityephemeralcontainerswithenvfrommixin)
      * [`fn withEnvMixin(env)`](#fn-speccapacityephemeralcontainerswithenvmixin)
      * [`fn withImage(image)`](#fn-speccapacityephemeralcontainerswithimage)
      * [`fn withImagePullPolicy(imagePullPolicy)`](#fn-speccapacityephemeralcontainerswithimagepullpolicy)
      * [`fn withName(name)`](#fn-speccapacityephemeralcontainerswithname)
      * [`fn withPorts(ports)`](#fn-speccapacityephemeralcontainerswithports)
      * [`fn withPortsMixin(ports)`](#fn-speccapacityephemeralcontainerswithportsmixin)
      * [`fn withStdin(stdin)`](#fn-speccapacityephemeralcontainerswithstdin)
      * [`fn withStdinOnce(stdinOnce)`](#fn-speccapacityephemeralcontainerswithstdinonce)
      * [`fn withTargetContainerName(targetContainerName)`](#fn-speccapacityephemeralcontainerswithtargetcontainername)
      * [`fn withTerminationMessagePath(terminationMessagePath)`](#fn-speccapacityephemeralcontainerswithterminationmessagepath)
      * [`fn withTerminationMessagePolicy(terminationMessagePolicy)`](#fn-speccapacityephemeralcontainerswithterminationmessagepolicy)
      * [`fn withTty(tty)`](#fn-speccapacityephemeralcontainerswithtty)
      * [`fn withVolumeDevices(volumeDevices)`](#fn-speccapacityephemeralcontainerswithvolumedevices)
      * [`fn withVolumeDevicesMixin(volumeDevices)`](#fn-speccapacityephemeralcontainerswithvolumedevicesmixin)
      * [`fn withVolumeMounts(volumeMounts)`](#fn-speccapacityephemeralcontainerswithvolumemounts)
      * [`fn withVolumeMountsMixin(volumeMounts)`](#fn-speccapacityephemeralcontainerswithvolumemountsmixin)
      * [`fn withWorkingDir(workingDir)`](#fn-speccapacityephemeralcontainerswithworkingdir)
      * [`obj spec.capacity.ephemeralContainers.env`](#obj-speccapacityephemeralcontainersenv)
        * [`fn withName(name)`](#fn-speccapacityephemeralcontainersenvwithname)
        * [`fn withValue(value)`](#fn-speccapacityephemeralcontainersenvwithvalue)
        * [`obj spec.capacity.ephemeralContainers.env.valueFrom`](#obj-speccapacityephemeralcontainersenvvaluefrom)
          * [`obj spec.capacity.ephemeralContainers.env.valueFrom.configMapKeyRef`](#obj-speccapacityephemeralcontainersenvvaluefromconfigmapkeyref)
            * [`fn withKey(key)`](#fn-speccapacityephemeralcontainersenvvaluefromconfigmapkeyrefwithkey)
            * [`fn withName(name)`](#fn-speccapacityephemeralcontainersenvvaluefromconfigmapkeyrefwithname)
            * [`fn withOptional(optional)`](#fn-speccapacityephemeralcontainersenvvaluefromconfigmapkeyrefwithoptional)
          * [`obj spec.capacity.ephemeralContainers.env.valueFrom.fieldRef`](#obj-speccapacityephemeralcontainersenvvaluefromfieldref)
            * [`fn withApiVersion(apiVersion)`](#fn-speccapacityephemeralcontainersenvvaluefromfieldrefwithapiversion)
            * [`fn withFieldPath(fieldPath)`](#fn-speccapacityephemeralcontainersenvvaluefromfieldrefwithfieldpath)
          * [`obj spec.capacity.ephemeralContainers.env.valueFrom.resourceFieldRef`](#obj-speccapacityephemeralcontainersenvvaluefromresourcefieldref)
            * [`fn withContainerName(containerName)`](#fn-speccapacityephemeralcontainersenvvaluefromresourcefieldrefwithcontainername)
            * [`fn withDivisor(divisor)`](#fn-speccapacityephemeralcontainersenvvaluefromresourcefieldrefwithdivisor)
            * [`fn withResource(resource)`](#fn-speccapacityephemeralcontainersenvvaluefromresourcefieldrefwithresource)
          * [`obj spec.capacity.ephemeralContainers.env.valueFrom.secretKeyRef`](#obj-speccapacityephemeralcontainersenvvaluefromsecretkeyref)
            * [`fn withKey(key)`](#fn-speccapacityephemeralcontainersenvvaluefromsecretkeyrefwithkey)
            * [`fn withName(name)`](#fn-speccapacityephemeralcontainersenvvaluefromsecretkeyrefwithname)
            * [`fn withOptional(optional)`](#fn-speccapacityephemeralcontainersenvvaluefromsecretkeyrefwithoptional)
      * [`obj spec.capacity.ephemeralContainers.envFrom`](#obj-speccapacityephemeralcontainersenvfrom)
        * [`fn withPrefix(prefix)`](#fn-speccapacityephemeralcontainersenvfromwithprefix)
        * [`obj spec.capacity.ephemeralContainers.envFrom.configMapRef`](#obj-speccapacityephemeralcontainersenvfromconfigmapref)
          * [`fn withName(name)`](#fn-speccapacityephemeralcontainersenvfromconfigmaprefwithname)
          * [`fn withOptional(optional)`](#fn-speccapacityephemeralcontainersenvfromconfigmaprefwithoptional)
        * [`obj spec.capacity.ephemeralContainers.envFrom.secretRef`](#obj-speccapacityephemeralcontainersenvfromsecretref)
          * [`fn withName(name)`](#fn-speccapacityephemeralcontainersenvfromsecretrefwithname)
          * [`fn withOptional(optional)`](#fn-speccapacityephemeralcontainersenvfromsecretrefwithoptional)
      * [`obj spec.capacity.ephemeralContainers.lifecycle`](#obj-speccapacityephemeralcontainerslifecycle)
        * [`obj spec.capacity.ephemeralContainers.lifecycle.postStart`](#obj-speccapacityephemeralcontainerslifecyclepoststart)
          * [`obj spec.capacity.ephemeralContainers.lifecycle.postStart.exec`](#obj-speccapacityephemeralcontainerslifecyclepoststartexec)
            * [`fn withCommand(command)`](#fn-speccapacityephemeralcontainerslifecyclepoststartexecwithcommand)
            * [`fn withCommandMixin(command)`](#fn-speccapacityephemeralcontainerslifecyclepoststartexecwithcommandmixin)
          * [`obj spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet`](#obj-speccapacityephemeralcontainerslifecyclepoststarthttpget)
            * [`fn withHost(host)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgetwithhost)
            * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgetwithhttpheaders)
            * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgetwithhttpheadersmixin)
            * [`fn withPath(path)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgetwithpath)
            * [`fn withPort(port)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgetwithport)
            * [`fn withScheme(scheme)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgetwithscheme)
            * [`obj spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.httpHeaders`](#obj-speccapacityephemeralcontainerslifecyclepoststarthttpgethttpheaders)
              * [`fn withName(name)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgethttpheaderswithname)
              * [`fn withValue(value)`](#fn-speccapacityephemeralcontainerslifecyclepoststarthttpgethttpheaderswithvalue)
          * [`obj spec.capacity.ephemeralContainers.lifecycle.postStart.tcpSocket`](#obj-speccapacityephemeralcontainerslifecyclepoststarttcpsocket)
            * [`fn withHost(host)`](#fn-speccapacityephemeralcontainerslifecyclepoststarttcpsocketwithhost)
            * [`fn withPort(port)`](#fn-speccapacityephemeralcontainerslifecyclepoststarttcpsocketwithport)
        * [`obj spec.capacity.ephemeralContainers.lifecycle.preStop`](#obj-speccapacityephemeralcontainerslifecycleprestop)
          * [`obj spec.capacity.ephemeralContainers.lifecycle.preStop.exec`](#obj-speccapacityephemeralcontainerslifecycleprestopexec)
            * [`fn withCommand(command)`](#fn-speccapacityephemeralcontainerslifecycleprestopexecwithcommand)
            * [`fn withCommandMixin(command)`](#fn-speccapacityephemeralcontainerslifecycleprestopexecwithcommandmixin)
          * [`obj spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet`](#obj-speccapacityephemeralcontainerslifecycleprestophttpget)
            * [`fn withHost(host)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgetwithhost)
            * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgetwithhttpheaders)
            * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgetwithhttpheadersmixin)
            * [`fn withPath(path)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgetwithpath)
            * [`fn withPort(port)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgetwithport)
            * [`fn withScheme(scheme)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgetwithscheme)
            * [`obj spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.httpHeaders`](#obj-speccapacityephemeralcontainerslifecycleprestophttpgethttpheaders)
              * [`fn withName(name)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgethttpheaderswithname)
              * [`fn withValue(value)`](#fn-speccapacityephemeralcontainerslifecycleprestophttpgethttpheaderswithvalue)
          * [`obj spec.capacity.ephemeralContainers.lifecycle.preStop.tcpSocket`](#obj-speccapacityephemeralcontainerslifecycleprestoptcpsocket)
            * [`fn withHost(host)`](#fn-speccapacityephemeralcontainerslifecycleprestoptcpsocketwithhost)
            * [`fn withPort(port)`](#fn-speccapacityephemeralcontainerslifecycleprestoptcpsocketwithport)
      * [`obj spec.capacity.ephemeralContainers.livenessProbe`](#obj-speccapacityephemeralcontainerslivenessprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacityephemeralcontainerslivenessprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacityephemeralcontainerslivenessprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacityephemeralcontainerslivenessprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacityephemeralcontainerslivenessprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacityephemeralcontainerslivenessprobewithtimeoutseconds)
        * [`obj spec.capacity.ephemeralContainers.livenessProbe.exec`](#obj-speccapacityephemeralcontainerslivenessprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacityephemeralcontainerslivenessprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacityephemeralcontainerslivenessprobeexecwithcommandmixin)
        * [`obj spec.capacity.ephemeralContainers.livenessProbe.httpGet`](#obj-speccapacityephemeralcontainerslivenessprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgetwithscheme)
          * [`obj spec.capacity.ephemeralContainers.livenessProbe.httpGet.httpHeaders`](#obj-speccapacityephemeralcontainerslivenessprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacityephemeralcontainerslivenessprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.ephemeralContainers.livenessProbe.tcpSocket`](#obj-speccapacityephemeralcontainerslivenessprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacityephemeralcontainerslivenessprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacityephemeralcontainerslivenessprobetcpsocketwithport)
      * [`obj spec.capacity.ephemeralContainers.ports`](#obj-speccapacityephemeralcontainersports)
        * [`fn withContainerPort(containerPort)`](#fn-speccapacityephemeralcontainersportswithcontainerport)
        * [`fn withHostIP(hostIP)`](#fn-speccapacityephemeralcontainersportswithhostip)
        * [`fn withHostPort(hostPort)`](#fn-speccapacityephemeralcontainersportswithhostport)
        * [`fn withName(name)`](#fn-speccapacityephemeralcontainersportswithname)
        * [`fn withProtocol(protocol)`](#fn-speccapacityephemeralcontainersportswithprotocol)
      * [`obj spec.capacity.ephemeralContainers.readinessProbe`](#obj-speccapacityephemeralcontainersreadinessprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacityephemeralcontainersreadinessprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacityephemeralcontainersreadinessprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacityephemeralcontainersreadinessprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacityephemeralcontainersreadinessprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacityephemeralcontainersreadinessprobewithtimeoutseconds)
        * [`obj spec.capacity.ephemeralContainers.readinessProbe.exec`](#obj-speccapacityephemeralcontainersreadinessprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacityephemeralcontainersreadinessprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacityephemeralcontainersreadinessprobeexecwithcommandmixin)
        * [`obj spec.capacity.ephemeralContainers.readinessProbe.httpGet`](#obj-speccapacityephemeralcontainersreadinessprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgetwithscheme)
          * [`obj spec.capacity.ephemeralContainers.readinessProbe.httpGet.httpHeaders`](#obj-speccapacityephemeralcontainersreadinessprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacityephemeralcontainersreadinessprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.ephemeralContainers.readinessProbe.tcpSocket`](#obj-speccapacityephemeralcontainersreadinessprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacityephemeralcontainersreadinessprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacityephemeralcontainersreadinessprobetcpsocketwithport)
      * [`obj spec.capacity.ephemeralContainers.resources`](#obj-speccapacityephemeralcontainersresources)
        * [`fn withLimits(limits)`](#fn-speccapacityephemeralcontainersresourceswithlimits)
        * [`fn withLimitsMixin(limits)`](#fn-speccapacityephemeralcontainersresourceswithlimitsmixin)
        * [`fn withRequests(requests)`](#fn-speccapacityephemeralcontainersresourceswithrequests)
        * [`fn withRequestsMixin(requests)`](#fn-speccapacityephemeralcontainersresourceswithrequestsmixin)
      * [`obj spec.capacity.ephemeralContainers.securityContext`](#obj-speccapacityephemeralcontainerssecuritycontext)
        * [`fn withAllowPrivilegeEscalation(allowPrivilegeEscalation)`](#fn-speccapacityephemeralcontainerssecuritycontextwithallowprivilegeescalation)
        * [`fn withPrivileged(privileged)`](#fn-speccapacityephemeralcontainerssecuritycontextwithprivileged)
        * [`fn withProcMount(procMount)`](#fn-speccapacityephemeralcontainerssecuritycontextwithprocmount)
        * [`fn withReadOnlyRootFilesystem(readOnlyRootFilesystem)`](#fn-speccapacityephemeralcontainerssecuritycontextwithreadonlyrootfilesystem)
        * [`fn withRunAsGroup(runAsGroup)`](#fn-speccapacityephemeralcontainerssecuritycontextwithrunasgroup)
        * [`fn withRunAsNonRoot(runAsNonRoot)`](#fn-speccapacityephemeralcontainerssecuritycontextwithrunasnonroot)
        * [`fn withRunAsUser(runAsUser)`](#fn-speccapacityephemeralcontainerssecuritycontextwithrunasuser)
        * [`obj spec.capacity.ephemeralContainers.securityContext.capabilities`](#obj-speccapacityephemeralcontainerssecuritycontextcapabilities)
          * [`fn withAdd(add)`](#fn-speccapacityephemeralcontainerssecuritycontextcapabilitieswithadd)
          * [`fn withAddMixin(add)`](#fn-speccapacityephemeralcontainerssecuritycontextcapabilitieswithaddmixin)
          * [`fn withDrop(drop)`](#fn-speccapacityephemeralcontainerssecuritycontextcapabilitieswithdrop)
          * [`fn withDropMixin(drop)`](#fn-speccapacityephemeralcontainerssecuritycontextcapabilitieswithdropmixin)
        * [`obj spec.capacity.ephemeralContainers.securityContext.seLinuxOptions`](#obj-speccapacityephemeralcontainerssecuritycontextselinuxoptions)
          * [`fn withLevel(level)`](#fn-speccapacityephemeralcontainerssecuritycontextselinuxoptionswithlevel)
          * [`fn withRole(role)`](#fn-speccapacityephemeralcontainerssecuritycontextselinuxoptionswithrole)
          * [`fn withType(type)`](#fn-speccapacityephemeralcontainerssecuritycontextselinuxoptionswithtype)
          * [`fn withUser(user)`](#fn-speccapacityephemeralcontainerssecuritycontextselinuxoptionswithuser)
        * [`obj spec.capacity.ephemeralContainers.securityContext.windowsOptions`](#obj-speccapacityephemeralcontainerssecuritycontextwindowsoptions)
          * [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-speccapacityephemeralcontainerssecuritycontextwindowsoptionswithgmsacredentialspec)
          * [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-speccapacityephemeralcontainerssecuritycontextwindowsoptionswithgmsacredentialspecname)
          * [`fn withRunAsUserName(runAsUserName)`](#fn-speccapacityephemeralcontainerssecuritycontextwindowsoptionswithrunasusername)
      * [`obj spec.capacity.ephemeralContainers.startupProbe`](#obj-speccapacityephemeralcontainersstartupprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacityephemeralcontainersstartupprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacityephemeralcontainersstartupprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacityephemeralcontainersstartupprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacityephemeralcontainersstartupprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacityephemeralcontainersstartupprobewithtimeoutseconds)
        * [`obj spec.capacity.ephemeralContainers.startupProbe.exec`](#obj-speccapacityephemeralcontainersstartupprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacityephemeralcontainersstartupprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacityephemeralcontainersstartupprobeexecwithcommandmixin)
        * [`obj spec.capacity.ephemeralContainers.startupProbe.httpGet`](#obj-speccapacityephemeralcontainersstartupprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacityephemeralcontainersstartupprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityephemeralcontainersstartupprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityephemeralcontainersstartupprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacityephemeralcontainersstartupprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacityephemeralcontainersstartupprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacityephemeralcontainersstartupprobehttpgetwithscheme)
          * [`obj spec.capacity.ephemeralContainers.startupProbe.httpGet.httpHeaders`](#obj-speccapacityephemeralcontainersstartupprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacityephemeralcontainersstartupprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacityephemeralcontainersstartupprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.ephemeralContainers.startupProbe.tcpSocket`](#obj-speccapacityephemeralcontainersstartupprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacityephemeralcontainersstartupprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacityephemeralcontainersstartupprobetcpsocketwithport)
      * [`obj spec.capacity.ephemeralContainers.volumeDevices`](#obj-speccapacityephemeralcontainersvolumedevices)
        * [`fn withDevicePath(devicePath)`](#fn-speccapacityephemeralcontainersvolumedeviceswithdevicepath)
        * [`fn withName(name)`](#fn-speccapacityephemeralcontainersvolumedeviceswithname)
      * [`obj spec.capacity.ephemeralContainers.volumeMounts`](#obj-speccapacityephemeralcontainersvolumemounts)
        * [`fn withMountPath(mountPath)`](#fn-speccapacityephemeralcontainersvolumemountswithmountpath)
        * [`fn withMountPropagation(mountPropagation)`](#fn-speccapacityephemeralcontainersvolumemountswithmountpropagation)
        * [`fn withName(name)`](#fn-speccapacityephemeralcontainersvolumemountswithname)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityephemeralcontainersvolumemountswithreadonly)
        * [`fn withSubPath(subPath)`](#fn-speccapacityephemeralcontainersvolumemountswithsubpath)
        * [`fn withSubPathExpr(subPathExpr)`](#fn-speccapacityephemeralcontainersvolumemountswithsubpathexpr)
    * [`obj spec.capacity.hostAliases`](#obj-speccapacityhostaliases)
      * [`fn withHostnames(hostnames)`](#fn-speccapacityhostaliaseswithhostnames)
      * [`fn withHostnamesMixin(hostnames)`](#fn-speccapacityhostaliaseswithhostnamesmixin)
      * [`fn withIp(ip)`](#fn-speccapacityhostaliaseswithip)
    * [`obj spec.capacity.imagePullSecrets`](#obj-speccapacityimagepullsecrets)
      * [`fn withName(name)`](#fn-speccapacityimagepullsecretswithname)
    * [`obj spec.capacity.initContainers`](#obj-speccapacityinitcontainers)
      * [`fn withArgs(args)`](#fn-speccapacityinitcontainerswithargs)
      * [`fn withArgsMixin(args)`](#fn-speccapacityinitcontainerswithargsmixin)
      * [`fn withCommand(command)`](#fn-speccapacityinitcontainerswithcommand)
      * [`fn withCommandMixin(command)`](#fn-speccapacityinitcontainerswithcommandmixin)
      * [`fn withEnv(env)`](#fn-speccapacityinitcontainerswithenv)
      * [`fn withEnvFrom(envFrom)`](#fn-speccapacityinitcontainerswithenvfrom)
      * [`fn withEnvFromMixin(envFrom)`](#fn-speccapacityinitcontainerswithenvfrommixin)
      * [`fn withEnvMixin(env)`](#fn-speccapacityinitcontainerswithenvmixin)
      * [`fn withImage(image)`](#fn-speccapacityinitcontainerswithimage)
      * [`fn withImagePullPolicy(imagePullPolicy)`](#fn-speccapacityinitcontainerswithimagepullpolicy)
      * [`fn withName(name)`](#fn-speccapacityinitcontainerswithname)
      * [`fn withPorts(ports)`](#fn-speccapacityinitcontainerswithports)
      * [`fn withPortsMixin(ports)`](#fn-speccapacityinitcontainerswithportsmixin)
      * [`fn withStdin(stdin)`](#fn-speccapacityinitcontainerswithstdin)
      * [`fn withStdinOnce(stdinOnce)`](#fn-speccapacityinitcontainerswithstdinonce)
      * [`fn withTerminationMessagePath(terminationMessagePath)`](#fn-speccapacityinitcontainerswithterminationmessagepath)
      * [`fn withTerminationMessagePolicy(terminationMessagePolicy)`](#fn-speccapacityinitcontainerswithterminationmessagepolicy)
      * [`fn withTty(tty)`](#fn-speccapacityinitcontainerswithtty)
      * [`fn withVolumeDevices(volumeDevices)`](#fn-speccapacityinitcontainerswithvolumedevices)
      * [`fn withVolumeDevicesMixin(volumeDevices)`](#fn-speccapacityinitcontainerswithvolumedevicesmixin)
      * [`fn withVolumeMounts(volumeMounts)`](#fn-speccapacityinitcontainerswithvolumemounts)
      * [`fn withVolumeMountsMixin(volumeMounts)`](#fn-speccapacityinitcontainerswithvolumemountsmixin)
      * [`fn withWorkingDir(workingDir)`](#fn-speccapacityinitcontainerswithworkingdir)
      * [`obj spec.capacity.initContainers.env`](#obj-speccapacityinitcontainersenv)
        * [`fn withName(name)`](#fn-speccapacityinitcontainersenvwithname)
        * [`fn withValue(value)`](#fn-speccapacityinitcontainersenvwithvalue)
        * [`obj spec.capacity.initContainers.env.valueFrom`](#obj-speccapacityinitcontainersenvvaluefrom)
          * [`obj spec.capacity.initContainers.env.valueFrom.configMapKeyRef`](#obj-speccapacityinitcontainersenvvaluefromconfigmapkeyref)
            * [`fn withKey(key)`](#fn-speccapacityinitcontainersenvvaluefromconfigmapkeyrefwithkey)
            * [`fn withName(name)`](#fn-speccapacityinitcontainersenvvaluefromconfigmapkeyrefwithname)
            * [`fn withOptional(optional)`](#fn-speccapacityinitcontainersenvvaluefromconfigmapkeyrefwithoptional)
          * [`obj spec.capacity.initContainers.env.valueFrom.fieldRef`](#obj-speccapacityinitcontainersenvvaluefromfieldref)
            * [`fn withApiVersion(apiVersion)`](#fn-speccapacityinitcontainersenvvaluefromfieldrefwithapiversion)
            * [`fn withFieldPath(fieldPath)`](#fn-speccapacityinitcontainersenvvaluefromfieldrefwithfieldpath)
          * [`obj spec.capacity.initContainers.env.valueFrom.resourceFieldRef`](#obj-speccapacityinitcontainersenvvaluefromresourcefieldref)
            * [`fn withContainerName(containerName)`](#fn-speccapacityinitcontainersenvvaluefromresourcefieldrefwithcontainername)
            * [`fn withDivisor(divisor)`](#fn-speccapacityinitcontainersenvvaluefromresourcefieldrefwithdivisor)
            * [`fn withResource(resource)`](#fn-speccapacityinitcontainersenvvaluefromresourcefieldrefwithresource)
          * [`obj spec.capacity.initContainers.env.valueFrom.secretKeyRef`](#obj-speccapacityinitcontainersenvvaluefromsecretkeyref)
            * [`fn withKey(key)`](#fn-speccapacityinitcontainersenvvaluefromsecretkeyrefwithkey)
            * [`fn withName(name)`](#fn-speccapacityinitcontainersenvvaluefromsecretkeyrefwithname)
            * [`fn withOptional(optional)`](#fn-speccapacityinitcontainersenvvaluefromsecretkeyrefwithoptional)
      * [`obj spec.capacity.initContainers.envFrom`](#obj-speccapacityinitcontainersenvfrom)
        * [`fn withPrefix(prefix)`](#fn-speccapacityinitcontainersenvfromwithprefix)
        * [`obj spec.capacity.initContainers.envFrom.configMapRef`](#obj-speccapacityinitcontainersenvfromconfigmapref)
          * [`fn withName(name)`](#fn-speccapacityinitcontainersenvfromconfigmaprefwithname)
          * [`fn withOptional(optional)`](#fn-speccapacityinitcontainersenvfromconfigmaprefwithoptional)
        * [`obj spec.capacity.initContainers.envFrom.secretRef`](#obj-speccapacityinitcontainersenvfromsecretref)
          * [`fn withName(name)`](#fn-speccapacityinitcontainersenvfromsecretrefwithname)
          * [`fn withOptional(optional)`](#fn-speccapacityinitcontainersenvfromsecretrefwithoptional)
      * [`obj spec.capacity.initContainers.lifecycle`](#obj-speccapacityinitcontainerslifecycle)
        * [`obj spec.capacity.initContainers.lifecycle.postStart`](#obj-speccapacityinitcontainerslifecyclepoststart)
          * [`obj spec.capacity.initContainers.lifecycle.postStart.exec`](#obj-speccapacityinitcontainerslifecyclepoststartexec)
            * [`fn withCommand(command)`](#fn-speccapacityinitcontainerslifecyclepoststartexecwithcommand)
            * [`fn withCommandMixin(command)`](#fn-speccapacityinitcontainerslifecyclepoststartexecwithcommandmixin)
          * [`obj spec.capacity.initContainers.lifecycle.postStart.httpGet`](#obj-speccapacityinitcontainerslifecyclepoststarthttpget)
            * [`fn withHost(host)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgetwithhost)
            * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgetwithhttpheaders)
            * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgetwithhttpheadersmixin)
            * [`fn withPath(path)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgetwithpath)
            * [`fn withPort(port)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgetwithport)
            * [`fn withScheme(scheme)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgetwithscheme)
            * [`obj spec.capacity.initContainers.lifecycle.postStart.httpGet.httpHeaders`](#obj-speccapacityinitcontainerslifecyclepoststarthttpgethttpheaders)
              * [`fn withName(name)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgethttpheaderswithname)
              * [`fn withValue(value)`](#fn-speccapacityinitcontainerslifecyclepoststarthttpgethttpheaderswithvalue)
          * [`obj spec.capacity.initContainers.lifecycle.postStart.tcpSocket`](#obj-speccapacityinitcontainerslifecyclepoststarttcpsocket)
            * [`fn withHost(host)`](#fn-speccapacityinitcontainerslifecyclepoststarttcpsocketwithhost)
            * [`fn withPort(port)`](#fn-speccapacityinitcontainerslifecyclepoststarttcpsocketwithport)
        * [`obj spec.capacity.initContainers.lifecycle.preStop`](#obj-speccapacityinitcontainerslifecycleprestop)
          * [`obj spec.capacity.initContainers.lifecycle.preStop.exec`](#obj-speccapacityinitcontainerslifecycleprestopexec)
            * [`fn withCommand(command)`](#fn-speccapacityinitcontainerslifecycleprestopexecwithcommand)
            * [`fn withCommandMixin(command)`](#fn-speccapacityinitcontainerslifecycleprestopexecwithcommandmixin)
          * [`obj spec.capacity.initContainers.lifecycle.preStop.httpGet`](#obj-speccapacityinitcontainerslifecycleprestophttpget)
            * [`fn withHost(host)`](#fn-speccapacityinitcontainerslifecycleprestophttpgetwithhost)
            * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityinitcontainerslifecycleprestophttpgetwithhttpheaders)
            * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityinitcontainerslifecycleprestophttpgetwithhttpheadersmixin)
            * [`fn withPath(path)`](#fn-speccapacityinitcontainerslifecycleprestophttpgetwithpath)
            * [`fn withPort(port)`](#fn-speccapacityinitcontainerslifecycleprestophttpgetwithport)
            * [`fn withScheme(scheme)`](#fn-speccapacityinitcontainerslifecycleprestophttpgetwithscheme)
            * [`obj spec.capacity.initContainers.lifecycle.preStop.httpGet.httpHeaders`](#obj-speccapacityinitcontainerslifecycleprestophttpgethttpheaders)
              * [`fn withName(name)`](#fn-speccapacityinitcontainerslifecycleprestophttpgethttpheaderswithname)
              * [`fn withValue(value)`](#fn-speccapacityinitcontainerslifecycleprestophttpgethttpheaderswithvalue)
          * [`obj spec.capacity.initContainers.lifecycle.preStop.tcpSocket`](#obj-speccapacityinitcontainerslifecycleprestoptcpsocket)
            * [`fn withHost(host)`](#fn-speccapacityinitcontainerslifecycleprestoptcpsocketwithhost)
            * [`fn withPort(port)`](#fn-speccapacityinitcontainerslifecycleprestoptcpsocketwithport)
      * [`obj spec.capacity.initContainers.livenessProbe`](#obj-speccapacityinitcontainerslivenessprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacityinitcontainerslivenessprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacityinitcontainerslivenessprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacityinitcontainerslivenessprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacityinitcontainerslivenessprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacityinitcontainerslivenessprobewithtimeoutseconds)
        * [`obj spec.capacity.initContainers.livenessProbe.exec`](#obj-speccapacityinitcontainerslivenessprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacityinitcontainerslivenessprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacityinitcontainerslivenessprobeexecwithcommandmixin)
        * [`obj spec.capacity.initContainers.livenessProbe.httpGet`](#obj-speccapacityinitcontainerslivenessprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacityinitcontainerslivenessprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityinitcontainerslivenessprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityinitcontainerslivenessprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacityinitcontainerslivenessprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacityinitcontainerslivenessprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacityinitcontainerslivenessprobehttpgetwithscheme)
          * [`obj spec.capacity.initContainers.livenessProbe.httpGet.httpHeaders`](#obj-speccapacityinitcontainerslivenessprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacityinitcontainerslivenessprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacityinitcontainerslivenessprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.initContainers.livenessProbe.tcpSocket`](#obj-speccapacityinitcontainerslivenessprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacityinitcontainerslivenessprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacityinitcontainerslivenessprobetcpsocketwithport)
      * [`obj spec.capacity.initContainers.ports`](#obj-speccapacityinitcontainersports)
        * [`fn withContainerPort(containerPort)`](#fn-speccapacityinitcontainersportswithcontainerport)
        * [`fn withHostIP(hostIP)`](#fn-speccapacityinitcontainersportswithhostip)
        * [`fn withHostPort(hostPort)`](#fn-speccapacityinitcontainersportswithhostport)
        * [`fn withName(name)`](#fn-speccapacityinitcontainersportswithname)
        * [`fn withProtocol(protocol)`](#fn-speccapacityinitcontainersportswithprotocol)
      * [`obj spec.capacity.initContainers.readinessProbe`](#obj-speccapacityinitcontainersreadinessprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacityinitcontainersreadinessprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacityinitcontainersreadinessprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacityinitcontainersreadinessprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacityinitcontainersreadinessprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacityinitcontainersreadinessprobewithtimeoutseconds)
        * [`obj spec.capacity.initContainers.readinessProbe.exec`](#obj-speccapacityinitcontainersreadinessprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacityinitcontainersreadinessprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacityinitcontainersreadinessprobeexecwithcommandmixin)
        * [`obj spec.capacity.initContainers.readinessProbe.httpGet`](#obj-speccapacityinitcontainersreadinessprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacityinitcontainersreadinessprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityinitcontainersreadinessprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityinitcontainersreadinessprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacityinitcontainersreadinessprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacityinitcontainersreadinessprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacityinitcontainersreadinessprobehttpgetwithscheme)
          * [`obj spec.capacity.initContainers.readinessProbe.httpGet.httpHeaders`](#obj-speccapacityinitcontainersreadinessprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacityinitcontainersreadinessprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacityinitcontainersreadinessprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.initContainers.readinessProbe.tcpSocket`](#obj-speccapacityinitcontainersreadinessprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacityinitcontainersreadinessprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacityinitcontainersreadinessprobetcpsocketwithport)
      * [`obj spec.capacity.initContainers.resources`](#obj-speccapacityinitcontainersresources)
        * [`fn withLimits(limits)`](#fn-speccapacityinitcontainersresourceswithlimits)
        * [`fn withLimitsMixin(limits)`](#fn-speccapacityinitcontainersresourceswithlimitsmixin)
        * [`fn withRequests(requests)`](#fn-speccapacityinitcontainersresourceswithrequests)
        * [`fn withRequestsMixin(requests)`](#fn-speccapacityinitcontainersresourceswithrequestsmixin)
      * [`obj spec.capacity.initContainers.securityContext`](#obj-speccapacityinitcontainerssecuritycontext)
        * [`fn withAllowPrivilegeEscalation(allowPrivilegeEscalation)`](#fn-speccapacityinitcontainerssecuritycontextwithallowprivilegeescalation)
        * [`fn withPrivileged(privileged)`](#fn-speccapacityinitcontainerssecuritycontextwithprivileged)
        * [`fn withProcMount(procMount)`](#fn-speccapacityinitcontainerssecuritycontextwithprocmount)
        * [`fn withReadOnlyRootFilesystem(readOnlyRootFilesystem)`](#fn-speccapacityinitcontainerssecuritycontextwithreadonlyrootfilesystem)
        * [`fn withRunAsGroup(runAsGroup)`](#fn-speccapacityinitcontainerssecuritycontextwithrunasgroup)
        * [`fn withRunAsNonRoot(runAsNonRoot)`](#fn-speccapacityinitcontainerssecuritycontextwithrunasnonroot)
        * [`fn withRunAsUser(runAsUser)`](#fn-speccapacityinitcontainerssecuritycontextwithrunasuser)
        * [`obj spec.capacity.initContainers.securityContext.capabilities`](#obj-speccapacityinitcontainerssecuritycontextcapabilities)
          * [`fn withAdd(add)`](#fn-speccapacityinitcontainerssecuritycontextcapabilitieswithadd)
          * [`fn withAddMixin(add)`](#fn-speccapacityinitcontainerssecuritycontextcapabilitieswithaddmixin)
          * [`fn withDrop(drop)`](#fn-speccapacityinitcontainerssecuritycontextcapabilitieswithdrop)
          * [`fn withDropMixin(drop)`](#fn-speccapacityinitcontainerssecuritycontextcapabilitieswithdropmixin)
        * [`obj spec.capacity.initContainers.securityContext.seLinuxOptions`](#obj-speccapacityinitcontainerssecuritycontextselinuxoptions)
          * [`fn withLevel(level)`](#fn-speccapacityinitcontainerssecuritycontextselinuxoptionswithlevel)
          * [`fn withRole(role)`](#fn-speccapacityinitcontainerssecuritycontextselinuxoptionswithrole)
          * [`fn withType(type)`](#fn-speccapacityinitcontainerssecuritycontextselinuxoptionswithtype)
          * [`fn withUser(user)`](#fn-speccapacityinitcontainerssecuritycontextselinuxoptionswithuser)
        * [`obj spec.capacity.initContainers.securityContext.windowsOptions`](#obj-speccapacityinitcontainerssecuritycontextwindowsoptions)
          * [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-speccapacityinitcontainerssecuritycontextwindowsoptionswithgmsacredentialspec)
          * [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-speccapacityinitcontainerssecuritycontextwindowsoptionswithgmsacredentialspecname)
          * [`fn withRunAsUserName(runAsUserName)`](#fn-speccapacityinitcontainerssecuritycontextwindowsoptionswithrunasusername)
      * [`obj spec.capacity.initContainers.startupProbe`](#obj-speccapacityinitcontainersstartupprobe)
        * [`fn withFailureThreshold(failureThreshold)`](#fn-speccapacityinitcontainersstartupprobewithfailurethreshold)
        * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-speccapacityinitcontainersstartupprobewithinitialdelayseconds)
        * [`fn withPeriodSeconds(periodSeconds)`](#fn-speccapacityinitcontainersstartupprobewithperiodseconds)
        * [`fn withSuccessThreshold(successThreshold)`](#fn-speccapacityinitcontainersstartupprobewithsuccessthreshold)
        * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-speccapacityinitcontainersstartupprobewithtimeoutseconds)
        * [`obj spec.capacity.initContainers.startupProbe.exec`](#obj-speccapacityinitcontainersstartupprobeexec)
          * [`fn withCommand(command)`](#fn-speccapacityinitcontainersstartupprobeexecwithcommand)
          * [`fn withCommandMixin(command)`](#fn-speccapacityinitcontainersstartupprobeexecwithcommandmixin)
        * [`obj spec.capacity.initContainers.startupProbe.httpGet`](#obj-speccapacityinitcontainersstartupprobehttpget)
          * [`fn withHost(host)`](#fn-speccapacityinitcontainersstartupprobehttpgetwithhost)
          * [`fn withHttpHeaders(httpHeaders)`](#fn-speccapacityinitcontainersstartupprobehttpgetwithhttpheaders)
          * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-speccapacityinitcontainersstartupprobehttpgetwithhttpheadersmixin)
          * [`fn withPath(path)`](#fn-speccapacityinitcontainersstartupprobehttpgetwithpath)
          * [`fn withPort(port)`](#fn-speccapacityinitcontainersstartupprobehttpgetwithport)
          * [`fn withScheme(scheme)`](#fn-speccapacityinitcontainersstartupprobehttpgetwithscheme)
          * [`obj spec.capacity.initContainers.startupProbe.httpGet.httpHeaders`](#obj-speccapacityinitcontainersstartupprobehttpgethttpheaders)
            * [`fn withName(name)`](#fn-speccapacityinitcontainersstartupprobehttpgethttpheaderswithname)
            * [`fn withValue(value)`](#fn-speccapacityinitcontainersstartupprobehttpgethttpheaderswithvalue)
        * [`obj spec.capacity.initContainers.startupProbe.tcpSocket`](#obj-speccapacityinitcontainersstartupprobetcpsocket)
          * [`fn withHost(host)`](#fn-speccapacityinitcontainersstartupprobetcpsocketwithhost)
          * [`fn withPort(port)`](#fn-speccapacityinitcontainersstartupprobetcpsocketwithport)
      * [`obj spec.capacity.initContainers.volumeDevices`](#obj-speccapacityinitcontainersvolumedevices)
        * [`fn withDevicePath(devicePath)`](#fn-speccapacityinitcontainersvolumedeviceswithdevicepath)
        * [`fn withName(name)`](#fn-speccapacityinitcontainersvolumedeviceswithname)
      * [`obj spec.capacity.initContainers.volumeMounts`](#obj-speccapacityinitcontainersvolumemounts)
        * [`fn withMountPath(mountPath)`](#fn-speccapacityinitcontainersvolumemountswithmountpath)
        * [`fn withMountPropagation(mountPropagation)`](#fn-speccapacityinitcontainersvolumemountswithmountpropagation)
        * [`fn withName(name)`](#fn-speccapacityinitcontainersvolumemountswithname)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityinitcontainersvolumemountswithreadonly)
        * [`fn withSubPath(subPath)`](#fn-speccapacityinitcontainersvolumemountswithsubpath)
        * [`fn withSubPathExpr(subPathExpr)`](#fn-speccapacityinitcontainersvolumemountswithsubpathexpr)
    * [`obj spec.capacity.readinessGates`](#obj-speccapacityreadinessgates)
      * [`fn withConditionType(conditionType)`](#fn-speccapacityreadinessgateswithconditiontype)
    * [`obj spec.capacity.securityContext`](#obj-speccapacitysecuritycontext)
      * [`fn withFsGroup(fsGroup)`](#fn-speccapacitysecuritycontextwithfsgroup)
      * [`fn withRunAsGroup(runAsGroup)`](#fn-speccapacitysecuritycontextwithrunasgroup)
      * [`fn withRunAsNonRoot(runAsNonRoot)`](#fn-speccapacitysecuritycontextwithrunasnonroot)
      * [`fn withRunAsUser(runAsUser)`](#fn-speccapacitysecuritycontextwithrunasuser)
      * [`fn withSupplementalGroups(supplementalGroups)`](#fn-speccapacitysecuritycontextwithsupplementalgroups)
      * [`fn withSupplementalGroupsMixin(supplementalGroups)`](#fn-speccapacitysecuritycontextwithsupplementalgroupsmixin)
      * [`fn withSysctls(sysctls)`](#fn-speccapacitysecuritycontextwithsysctls)
      * [`fn withSysctlsMixin(sysctls)`](#fn-speccapacitysecuritycontextwithsysctlsmixin)
      * [`obj spec.capacity.securityContext.seLinuxOptions`](#obj-speccapacitysecuritycontextselinuxoptions)
        * [`fn withLevel(level)`](#fn-speccapacitysecuritycontextselinuxoptionswithlevel)
        * [`fn withRole(role)`](#fn-speccapacitysecuritycontextselinuxoptionswithrole)
        * [`fn withType(type)`](#fn-speccapacitysecuritycontextselinuxoptionswithtype)
        * [`fn withUser(user)`](#fn-speccapacitysecuritycontextselinuxoptionswithuser)
      * [`obj spec.capacity.securityContext.sysctls`](#obj-speccapacitysecuritycontextsysctls)
        * [`fn withName(name)`](#fn-speccapacitysecuritycontextsysctlswithname)
        * [`fn withValue(value)`](#fn-speccapacitysecuritycontextsysctlswithvalue)
      * [`obj spec.capacity.securityContext.windowsOptions`](#obj-speccapacitysecuritycontextwindowsoptions)
        * [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-speccapacitysecuritycontextwindowsoptionswithgmsacredentialspec)
        * [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-speccapacitysecuritycontextwindowsoptionswithgmsacredentialspecname)
        * [`fn withRunAsUserName(runAsUserName)`](#fn-speccapacitysecuritycontextwindowsoptionswithrunasusername)
    * [`obj spec.capacity.tolerations`](#obj-speccapacitytolerations)
      * [`fn withEffect(effect)`](#fn-speccapacitytolerationswitheffect)
      * [`fn withKey(key)`](#fn-speccapacitytolerationswithkey)
      * [`fn withOperator(operator)`](#fn-speccapacitytolerationswithoperator)
      * [`fn withTolerationSeconds(tolerationSeconds)`](#fn-speccapacitytolerationswithtolerationseconds)
      * [`fn withValue(value)`](#fn-speccapacitytolerationswithvalue)
    * [`obj spec.capacity.topologySpreadConstraints`](#obj-speccapacitytopologyspreadconstraints)
      * [`fn withMaxSkew(maxSkew)`](#fn-speccapacitytopologyspreadconstraintswithmaxskew)
      * [`fn withTopologyKey(topologyKey)`](#fn-speccapacitytopologyspreadconstraintswithtopologykey)
      * [`fn withWhenUnsatisfiable(whenUnsatisfiable)`](#fn-speccapacitytopologyspreadconstraintswithwhenunsatisfiable)
      * [`obj spec.capacity.topologySpreadConstraints.labelSelector`](#obj-speccapacitytopologyspreadconstraintslabelselector)
        * [`fn withMatchExpressions(matchExpressions)`](#fn-speccapacitytopologyspreadconstraintslabelselectorwithmatchexpressions)
        * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-speccapacitytopologyspreadconstraintslabelselectorwithmatchexpressionsmixin)
        * [`fn withMatchLabels(matchLabels)`](#fn-speccapacitytopologyspreadconstraintslabelselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(matchLabels)`](#fn-speccapacitytopologyspreadconstraintslabelselectorwithmatchlabelsmixin)
        * [`obj spec.capacity.topologySpreadConstraints.labelSelector.matchExpressions`](#obj-speccapacitytopologyspreadconstraintslabelselectormatchexpressions)
          * [`fn withKey(key)`](#fn-speccapacitytopologyspreadconstraintslabelselectormatchexpressionswithkey)
          * [`fn withOperator(operator)`](#fn-speccapacitytopologyspreadconstraintslabelselectormatchexpressionswithoperator)
          * [`fn withValues(values)`](#fn-speccapacitytopologyspreadconstraintslabelselectormatchexpressionswithvalues)
          * [`fn withValuesMixin(values)`](#fn-speccapacitytopologyspreadconstraintslabelselectormatchexpressionswithvaluesmixin)
    * [`obj spec.capacity.volumes`](#obj-speccapacityvolumes)
      * [`fn withName(name)`](#fn-speccapacityvolumeswithname)
      * [`obj spec.capacity.volumes.awsElasticBlockStore`](#obj-speccapacityvolumesawselasticblockstore)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesawselasticblockstorewithfstype)
        * [`fn withPartition(partition)`](#fn-speccapacityvolumesawselasticblockstorewithpartition)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesawselasticblockstorewithreadonly)
        * [`fn withVolumeID(volumeID)`](#fn-speccapacityvolumesawselasticblockstorewithvolumeid)
      * [`obj spec.capacity.volumes.azureDisk`](#obj-speccapacityvolumesazuredisk)
        * [`fn withCachingMode(cachingMode)`](#fn-speccapacityvolumesazurediskwithcachingmode)
        * [`fn withDiskName(diskName)`](#fn-speccapacityvolumesazurediskwithdiskname)
        * [`fn withDiskURI(diskURI)`](#fn-speccapacityvolumesazurediskwithdiskuri)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesazurediskwithfstype)
        * [`fn withKind(kind)`](#fn-speccapacityvolumesazurediskwithkind)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesazurediskwithreadonly)
      * [`obj spec.capacity.volumes.azureFile`](#obj-speccapacityvolumesazurefile)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesazurefilewithreadonly)
        * [`fn withSecretName(secretName)`](#fn-speccapacityvolumesazurefilewithsecretname)
        * [`fn withShareName(shareName)`](#fn-speccapacityvolumesazurefilewithsharename)
      * [`obj spec.capacity.volumes.cephfs`](#obj-speccapacityvolumescephfs)
        * [`fn withMonitors(monitors)`](#fn-speccapacityvolumescephfswithmonitors)
        * [`fn withMonitorsMixin(monitors)`](#fn-speccapacityvolumescephfswithmonitorsmixin)
        * [`fn withPath(path)`](#fn-speccapacityvolumescephfswithpath)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumescephfswithreadonly)
        * [`fn withSecretFile(secretFile)`](#fn-speccapacityvolumescephfswithsecretfile)
        * [`fn withUser(user)`](#fn-speccapacityvolumescephfswithuser)
        * [`obj spec.capacity.volumes.cephfs.secretRef`](#obj-speccapacityvolumescephfssecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumescephfssecretrefwithname)
      * [`obj spec.capacity.volumes.cinder`](#obj-speccapacityvolumescinder)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumescinderwithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumescinderwithreadonly)
        * [`fn withVolumeID(volumeID)`](#fn-speccapacityvolumescinderwithvolumeid)
        * [`obj spec.capacity.volumes.cinder.secretRef`](#obj-speccapacityvolumescindersecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumescindersecretrefwithname)
      * [`obj spec.capacity.volumes.configMap`](#obj-speccapacityvolumesconfigmap)
        * [`fn withDefaultMode(defaultMode)`](#fn-speccapacityvolumesconfigmapwithdefaultmode)
        * [`fn withItems(items)`](#fn-speccapacityvolumesconfigmapwithitems)
        * [`fn withItemsMixin(items)`](#fn-speccapacityvolumesconfigmapwithitemsmixin)
        * [`fn withName(name)`](#fn-speccapacityvolumesconfigmapwithname)
        * [`fn withOptional(optional)`](#fn-speccapacityvolumesconfigmapwithoptional)
        * [`obj spec.capacity.volumes.configMap.items`](#obj-speccapacityvolumesconfigmapitems)
          * [`fn withKey(key)`](#fn-speccapacityvolumesconfigmapitemswithkey)
          * [`fn withMode(mode)`](#fn-speccapacityvolumesconfigmapitemswithmode)
          * [`fn withPath(path)`](#fn-speccapacityvolumesconfigmapitemswithpath)
      * [`obj spec.capacity.volumes.csi`](#obj-speccapacityvolumescsi)
        * [`fn withDriver(driver)`](#fn-speccapacityvolumescsiwithdriver)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumescsiwithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumescsiwithreadonly)
        * [`fn withVolumeAttributes(volumeAttributes)`](#fn-speccapacityvolumescsiwithvolumeattributes)
        * [`fn withVolumeAttributesMixin(volumeAttributes)`](#fn-speccapacityvolumescsiwithvolumeattributesmixin)
        * [`obj spec.capacity.volumes.csi.nodePublishSecretRef`](#obj-speccapacityvolumescsinodepublishsecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumescsinodepublishsecretrefwithname)
      * [`obj spec.capacity.volumes.downwardAPI`](#obj-speccapacityvolumesdownwardapi)
        * [`fn withDefaultMode(defaultMode)`](#fn-speccapacityvolumesdownwardapiwithdefaultmode)
        * [`fn withItems(items)`](#fn-speccapacityvolumesdownwardapiwithitems)
        * [`fn withItemsMixin(items)`](#fn-speccapacityvolumesdownwardapiwithitemsmixin)
        * [`obj spec.capacity.volumes.downwardAPI.items`](#obj-speccapacityvolumesdownwardapiitems)
          * [`fn withMode(mode)`](#fn-speccapacityvolumesdownwardapiitemswithmode)
          * [`fn withPath(path)`](#fn-speccapacityvolumesdownwardapiitemswithpath)
          * [`obj spec.capacity.volumes.downwardAPI.items.fieldRef`](#obj-speccapacityvolumesdownwardapiitemsfieldref)
            * [`fn withApiVersion(apiVersion)`](#fn-speccapacityvolumesdownwardapiitemsfieldrefwithapiversion)
            * [`fn withFieldPath(fieldPath)`](#fn-speccapacityvolumesdownwardapiitemsfieldrefwithfieldpath)
          * [`obj spec.capacity.volumes.downwardAPI.items.resourceFieldRef`](#obj-speccapacityvolumesdownwardapiitemsresourcefieldref)
            * [`fn withContainerName(containerName)`](#fn-speccapacityvolumesdownwardapiitemsresourcefieldrefwithcontainername)
            * [`fn withDivisor(divisor)`](#fn-speccapacityvolumesdownwardapiitemsresourcefieldrefwithdivisor)
            * [`fn withResource(resource)`](#fn-speccapacityvolumesdownwardapiitemsresourcefieldrefwithresource)
      * [`obj spec.capacity.volumes.emptyDir`](#obj-speccapacityvolumesemptydir)
        * [`fn withMedium(medium)`](#fn-speccapacityvolumesemptydirwithmedium)
        * [`fn withSizeLimit(sizeLimit)`](#fn-speccapacityvolumesemptydirwithsizelimit)
      * [`obj spec.capacity.volumes.fc`](#obj-speccapacityvolumesfc)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesfcwithfstype)
        * [`fn withLun(lun)`](#fn-speccapacityvolumesfcwithlun)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesfcwithreadonly)
        * [`fn withTargetWWNs(targetWWNs)`](#fn-speccapacityvolumesfcwithtargetwwns)
        * [`fn withTargetWWNsMixin(targetWWNs)`](#fn-speccapacityvolumesfcwithtargetwwnsmixin)
        * [`fn withWwids(wwids)`](#fn-speccapacityvolumesfcwithwwids)
        * [`fn withWwidsMixin(wwids)`](#fn-speccapacityvolumesfcwithwwidsmixin)
      * [`obj spec.capacity.volumes.flexVolume`](#obj-speccapacityvolumesflexvolume)
        * [`fn withDriver(driver)`](#fn-speccapacityvolumesflexvolumewithdriver)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesflexvolumewithfstype)
        * [`fn withOptions(options)`](#fn-speccapacityvolumesflexvolumewithoptions)
        * [`fn withOptionsMixin(options)`](#fn-speccapacityvolumesflexvolumewithoptionsmixin)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesflexvolumewithreadonly)
        * [`obj spec.capacity.volumes.flexVolume.secretRef`](#obj-speccapacityvolumesflexvolumesecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumesflexvolumesecretrefwithname)
      * [`obj spec.capacity.volumes.flocker`](#obj-speccapacityvolumesflocker)
        * [`fn withDatasetName(datasetName)`](#fn-speccapacityvolumesflockerwithdatasetname)
        * [`fn withDatasetUUID(datasetUUID)`](#fn-speccapacityvolumesflockerwithdatasetuuid)
      * [`obj spec.capacity.volumes.gcePersistentDisk`](#obj-speccapacityvolumesgcepersistentdisk)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesgcepersistentdiskwithfstype)
        * [`fn withPartition(partition)`](#fn-speccapacityvolumesgcepersistentdiskwithpartition)
        * [`fn withPdName(pdName)`](#fn-speccapacityvolumesgcepersistentdiskwithpdname)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesgcepersistentdiskwithreadonly)
      * [`obj spec.capacity.volumes.gitRepo`](#obj-speccapacityvolumesgitrepo)
        * [`fn withDirectory(directory)`](#fn-speccapacityvolumesgitrepowithdirectory)
        * [`fn withRepository(repository)`](#fn-speccapacityvolumesgitrepowithrepository)
        * [`fn withRevision(revision)`](#fn-speccapacityvolumesgitrepowithrevision)
      * [`obj spec.capacity.volumes.glusterfs`](#obj-speccapacityvolumesglusterfs)
        * [`fn withEndpoints(endpoints)`](#fn-speccapacityvolumesglusterfswithendpoints)
        * [`fn withPath(path)`](#fn-speccapacityvolumesglusterfswithpath)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesglusterfswithreadonly)
      * [`obj spec.capacity.volumes.hostPath`](#obj-speccapacityvolumeshostpath)
        * [`fn withPath(path)`](#fn-speccapacityvolumeshostpathwithpath)
        * [`fn withType(type)`](#fn-speccapacityvolumeshostpathwithtype)
      * [`obj spec.capacity.volumes.iscsi`](#obj-speccapacityvolumesiscsi)
        * [`fn withChapAuthDiscovery(chapAuthDiscovery)`](#fn-speccapacityvolumesiscsiwithchapauthdiscovery)
        * [`fn withChapAuthSession(chapAuthSession)`](#fn-speccapacityvolumesiscsiwithchapauthsession)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesiscsiwithfstype)
        * [`fn withInitiatorName(initiatorName)`](#fn-speccapacityvolumesiscsiwithinitiatorname)
        * [`fn withIqn(iqn)`](#fn-speccapacityvolumesiscsiwithiqn)
        * [`fn withIscsiInterface(iscsiInterface)`](#fn-speccapacityvolumesiscsiwithiscsiinterface)
        * [`fn withLun(lun)`](#fn-speccapacityvolumesiscsiwithlun)
        * [`fn withPortals(portals)`](#fn-speccapacityvolumesiscsiwithportals)
        * [`fn withPortalsMixin(portals)`](#fn-speccapacityvolumesiscsiwithportalsmixin)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesiscsiwithreadonly)
        * [`fn withTargetPortal(targetPortal)`](#fn-speccapacityvolumesiscsiwithtargetportal)
        * [`obj spec.capacity.volumes.iscsi.secretRef`](#obj-speccapacityvolumesiscsisecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumesiscsisecretrefwithname)
      * [`obj spec.capacity.volumes.nfs`](#obj-speccapacityvolumesnfs)
        * [`fn withPath(path)`](#fn-speccapacityvolumesnfswithpath)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesnfswithreadonly)
        * [`fn withServer(server)`](#fn-speccapacityvolumesnfswithserver)
      * [`obj spec.capacity.volumes.persistentVolumeClaim`](#obj-speccapacityvolumespersistentvolumeclaim)
        * [`fn withClaimName(claimName)`](#fn-speccapacityvolumespersistentvolumeclaimwithclaimname)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumespersistentvolumeclaimwithreadonly)
      * [`obj spec.capacity.volumes.photonPersistentDisk`](#obj-speccapacityvolumesphotonpersistentdisk)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesphotonpersistentdiskwithfstype)
        * [`fn withPdID(pdID)`](#fn-speccapacityvolumesphotonpersistentdiskwithpdid)
      * [`obj spec.capacity.volumes.portworxVolume`](#obj-speccapacityvolumesportworxvolume)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesportworxvolumewithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesportworxvolumewithreadonly)
        * [`fn withVolumeID(volumeID)`](#fn-speccapacityvolumesportworxvolumewithvolumeid)
      * [`obj spec.capacity.volumes.projected`](#obj-speccapacityvolumesprojected)
        * [`fn withDefaultMode(defaultMode)`](#fn-speccapacityvolumesprojectedwithdefaultmode)
        * [`fn withSources(sources)`](#fn-speccapacityvolumesprojectedwithsources)
        * [`fn withSourcesMixin(sources)`](#fn-speccapacityvolumesprojectedwithsourcesmixin)
        * [`obj spec.capacity.volumes.projected.sources`](#obj-speccapacityvolumesprojectedsources)
          * [`obj spec.capacity.volumes.projected.sources.configMap`](#obj-speccapacityvolumesprojectedsourcesconfigmap)
            * [`fn withItems(items)`](#fn-speccapacityvolumesprojectedsourcesconfigmapwithitems)
            * [`fn withItemsMixin(items)`](#fn-speccapacityvolumesprojectedsourcesconfigmapwithitemsmixin)
            * [`fn withName(name)`](#fn-speccapacityvolumesprojectedsourcesconfigmapwithname)
            * [`fn withOptional(optional)`](#fn-speccapacityvolumesprojectedsourcesconfigmapwithoptional)
            * [`obj spec.capacity.volumes.projected.sources.configMap.items`](#obj-speccapacityvolumesprojectedsourcesconfigmapitems)
              * [`fn withKey(key)`](#fn-speccapacityvolumesprojectedsourcesconfigmapitemswithkey)
              * [`fn withMode(mode)`](#fn-speccapacityvolumesprojectedsourcesconfigmapitemswithmode)
              * [`fn withPath(path)`](#fn-speccapacityvolumesprojectedsourcesconfigmapitemswithpath)
          * [`obj spec.capacity.volumes.projected.sources.downwardAPI`](#obj-speccapacityvolumesprojectedsourcesdownwardapi)
            * [`fn withItems(items)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiwithitems)
            * [`fn withItemsMixin(items)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiwithitemsmixin)
            * [`obj spec.capacity.volumes.projected.sources.downwardAPI.items`](#obj-speccapacityvolumesprojectedsourcesdownwardapiitems)
              * [`fn withMode(mode)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemswithmode)
              * [`fn withPath(path)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemswithpath)
              * [`obj spec.capacity.volumes.projected.sources.downwardAPI.items.fieldRef`](#obj-speccapacityvolumesprojectedsourcesdownwardapiitemsfieldref)
                * [`fn withApiVersion(apiVersion)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemsfieldrefwithapiversion)
                * [`fn withFieldPath(fieldPath)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemsfieldrefwithfieldpath)
              * [`obj spec.capacity.volumes.projected.sources.downwardAPI.items.resourceFieldRef`](#obj-speccapacityvolumesprojectedsourcesdownwardapiitemsresourcefieldref)
                * [`fn withContainerName(containerName)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemsresourcefieldrefwithcontainername)
                * [`fn withDivisor(divisor)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemsresourcefieldrefwithdivisor)
                * [`fn withResource(resource)`](#fn-speccapacityvolumesprojectedsourcesdownwardapiitemsresourcefieldrefwithresource)
          * [`obj spec.capacity.volumes.projected.sources.secret`](#obj-speccapacityvolumesprojectedsourcessecret)
            * [`fn withItems(items)`](#fn-speccapacityvolumesprojectedsourcessecretwithitems)
            * [`fn withItemsMixin(items)`](#fn-speccapacityvolumesprojectedsourcessecretwithitemsmixin)
            * [`fn withName(name)`](#fn-speccapacityvolumesprojectedsourcessecretwithname)
            * [`fn withOptional(optional)`](#fn-speccapacityvolumesprojectedsourcessecretwithoptional)
            * [`obj spec.capacity.volumes.projected.sources.secret.items`](#obj-speccapacityvolumesprojectedsourcessecretitems)
              * [`fn withKey(key)`](#fn-speccapacityvolumesprojectedsourcessecretitemswithkey)
              * [`fn withMode(mode)`](#fn-speccapacityvolumesprojectedsourcessecretitemswithmode)
              * [`fn withPath(path)`](#fn-speccapacityvolumesprojectedsourcessecretitemswithpath)
          * [`obj spec.capacity.volumes.projected.sources.serviceAccountToken`](#obj-speccapacityvolumesprojectedsourcesserviceaccounttoken)
            * [`fn withAudience(audience)`](#fn-speccapacityvolumesprojectedsourcesserviceaccounttokenwithaudience)
            * [`fn withExpirationSeconds(expirationSeconds)`](#fn-speccapacityvolumesprojectedsourcesserviceaccounttokenwithexpirationseconds)
            * [`fn withPath(path)`](#fn-speccapacityvolumesprojectedsourcesserviceaccounttokenwithpath)
      * [`obj spec.capacity.volumes.quobyte`](#obj-speccapacityvolumesquobyte)
        * [`fn withGroup(group)`](#fn-speccapacityvolumesquobytewithgroup)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesquobytewithreadonly)
        * [`fn withRegistry(registry)`](#fn-speccapacityvolumesquobytewithregistry)
        * [`fn withTenant(tenant)`](#fn-speccapacityvolumesquobytewithtenant)
        * [`fn withUser(user)`](#fn-speccapacityvolumesquobytewithuser)
        * [`fn withVolume(volume)`](#fn-speccapacityvolumesquobytewithvolume)
      * [`obj spec.capacity.volumes.rbd`](#obj-speccapacityvolumesrbd)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesrbdwithfstype)
        * [`fn withImage(image)`](#fn-speccapacityvolumesrbdwithimage)
        * [`fn withKeyring(keyring)`](#fn-speccapacityvolumesrbdwithkeyring)
        * [`fn withMonitors(monitors)`](#fn-speccapacityvolumesrbdwithmonitors)
        * [`fn withMonitorsMixin(monitors)`](#fn-speccapacityvolumesrbdwithmonitorsmixin)
        * [`fn withPool(pool)`](#fn-speccapacityvolumesrbdwithpool)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesrbdwithreadonly)
        * [`fn withUser(user)`](#fn-speccapacityvolumesrbdwithuser)
        * [`obj spec.capacity.volumes.rbd.secretRef`](#obj-speccapacityvolumesrbdsecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumesrbdsecretrefwithname)
      * [`obj spec.capacity.volumes.scaleIO`](#obj-speccapacityvolumesscaleio)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesscaleiowithfstype)
        * [`fn withGateway(gateway)`](#fn-speccapacityvolumesscaleiowithgateway)
        * [`fn withProtectionDomain(protectionDomain)`](#fn-speccapacityvolumesscaleiowithprotectiondomain)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesscaleiowithreadonly)
        * [`fn withSslEnabled(sslEnabled)`](#fn-speccapacityvolumesscaleiowithsslenabled)
        * [`fn withStorageMode(storageMode)`](#fn-speccapacityvolumesscaleiowithstoragemode)
        * [`fn withStoragePool(storagePool)`](#fn-speccapacityvolumesscaleiowithstoragepool)
        * [`fn withSystem(system)`](#fn-speccapacityvolumesscaleiowithsystem)
        * [`fn withVolumeName(volumeName)`](#fn-speccapacityvolumesscaleiowithvolumename)
        * [`obj spec.capacity.volumes.scaleIO.secretRef`](#obj-speccapacityvolumesscaleiosecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumesscaleiosecretrefwithname)
      * [`obj spec.capacity.volumes.secret`](#obj-speccapacityvolumessecret)
        * [`fn withDefaultMode(defaultMode)`](#fn-speccapacityvolumessecretwithdefaultmode)
        * [`fn withItems(items)`](#fn-speccapacityvolumessecretwithitems)
        * [`fn withItemsMixin(items)`](#fn-speccapacityvolumessecretwithitemsmixin)
        * [`fn withOptional(optional)`](#fn-speccapacityvolumessecretwithoptional)
        * [`fn withSecretName(secretName)`](#fn-speccapacityvolumessecretwithsecretname)
        * [`obj spec.capacity.volumes.secret.items`](#obj-speccapacityvolumessecretitems)
          * [`fn withKey(key)`](#fn-speccapacityvolumessecretitemswithkey)
          * [`fn withMode(mode)`](#fn-speccapacityvolumessecretitemswithmode)
          * [`fn withPath(path)`](#fn-speccapacityvolumessecretitemswithpath)
      * [`obj spec.capacity.volumes.storageos`](#obj-speccapacityvolumesstorageos)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesstorageoswithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-speccapacityvolumesstorageoswithreadonly)
        * [`fn withVolumeName(volumeName)`](#fn-speccapacityvolumesstorageoswithvolumename)
        * [`fn withVolumeNamespace(volumeNamespace)`](#fn-speccapacityvolumesstorageoswithvolumenamespace)
        * [`obj spec.capacity.volumes.storageos.secretRef`](#obj-speccapacityvolumesstorageossecretref)
          * [`fn withName(name)`](#fn-speccapacityvolumesstorageossecretrefwithname)
      * [`obj spec.capacity.volumes.vsphereVolume`](#obj-speccapacityvolumesvspherevolume)
        * [`fn withFsType(fsType)`](#fn-speccapacityvolumesvspherevolumewithfstype)
        * [`fn withStoragePolicyID(storagePolicyID)`](#fn-speccapacityvolumesvspherevolumewithstoragepolicyid)
        * [`fn withStoragePolicyName(storagePolicyName)`](#fn-speccapacityvolumesvspherevolumewithstoragepolicyname)
        * [`fn withVolumePath(volumePath)`](#fn-speccapacityvolumesvspherevolumewithvolumepath)
  * [`obj spec.provisionPolicy`](#obj-specprovisionpolicy)
    * [`fn withPodsToReplace(podsToReplace)`](#fn-specprovisionpolicywithpodstoreplace)
    * [`fn withPodsToReplaceMixin(podsToReplace)`](#fn-specprovisionpolicywithpodstoreplacemixin)
    * [`obj spec.provisionPolicy.podsToReplace`](#obj-specprovisionpolicypodstoreplace)
      * [`fn withName(name)`](#fn-specprovisionpolicypodstoreplacewithname)
  * [`obj spec.provisionedCapacitySelector`](#obj-specprovisionedcapacityselector)
    * [`fn withMatchExpressions(matchExpressions)`](#fn-specprovisionedcapacityselectorwithmatchexpressions)
    * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-specprovisionedcapacityselectorwithmatchexpressionsmixin)
    * [`fn withMatchLabels(matchLabels)`](#fn-specprovisionedcapacityselectorwithmatchlabels)
    * [`fn withMatchLabelsMixin(matchLabels)`](#fn-specprovisionedcapacityselectorwithmatchlabelsmixin)
    * [`obj spec.provisionedCapacitySelector.matchExpressions`](#obj-specprovisionedcapacityselectormatchexpressions)
      * [`fn withKey(key)`](#fn-specprovisionedcapacityselectormatchexpressionswithkey)
      * [`fn withOperator(operator)`](#fn-specprovisionedcapacityselectormatchexpressionswithoperator)
      * [`fn withValues(values)`](#fn-specprovisionedcapacityselectormatchexpressionswithvalues)
      * [`fn withValuesMixin(values)`](#fn-specprovisionedcapacityselectormatchexpressionswithvaluesmixin)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of CapacityRequest

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

"Specification of the CapacityRequest object. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status."

## obj spec.capacity

"Capacity specifies additional capacity to reserve in the cluster as a specification of the pod that should be scheduled in the cluster."

### fn spec.capacity.withActiveDeadlineSeconds

```ts
withActiveDeadlineSeconds(activeDeadlineSeconds)
```

"Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer."

### fn spec.capacity.withAutomountServiceAccountToken

```ts
withAutomountServiceAccountToken(automountServiceAccountToken)
```

"AutomountServiceAccountToken indicates whether a service account token should be automatically mounted."

### fn spec.capacity.withContainers

```ts
withContainers(containers)
```

"List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated."

### fn spec.capacity.withContainersMixin

```ts
withContainersMixin(containers)
```

"List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.withDnsPolicy

```ts
withDnsPolicy(dnsPolicy)
```

"Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'."

### fn spec.capacity.withEnableServiceLinks

```ts
withEnableServiceLinks(enableServiceLinks)
```

"EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true."

### fn spec.capacity.withEphemeralContainers

```ts
withEphemeralContainers(ephemeralContainers)
```

"List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature."

### fn spec.capacity.withEphemeralContainersMixin

```ts
withEphemeralContainersMixin(ephemeralContainers)
```

"List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature."

**Note:** This function appends passed data to existing values

### fn spec.capacity.withHostAliases

```ts
withHostAliases(hostAliases)
```

"HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods."

### fn spec.capacity.withHostAliasesMixin

```ts
withHostAliasesMixin(hostAliases)
```

"HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods."

**Note:** This function appends passed data to existing values

### fn spec.capacity.withHostIPC

```ts
withHostIPC(hostIPC)
```

"Use the host's ipc namespace. Optional: Default to false."

### fn spec.capacity.withHostNetwork

```ts
withHostNetwork(hostNetwork)
```

"Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false."

### fn spec.capacity.withHostPID

```ts
withHostPID(hostPID)
```

"Use the host's pid namespace. Optional: Default to false."

### fn spec.capacity.withHostname

```ts
withHostname(hostname)
```

"Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value."

### fn spec.capacity.withImagePullSecrets

```ts
withImagePullSecrets(imagePullSecrets)
```

"ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod"

### fn spec.capacity.withImagePullSecretsMixin

```ts
withImagePullSecretsMixin(imagePullSecrets)
```

"ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod"

**Note:** This function appends passed data to existing values

### fn spec.capacity.withInitContainers

```ts
withInitContainers(initContainers)
```

"List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/"

### fn spec.capacity.withInitContainersMixin

```ts
withInitContainersMixin(initContainers)
```

"List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/"

**Note:** This function appends passed data to existing values

### fn spec.capacity.withNodeName

```ts
withNodeName(nodeName)
```

"NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements."

### fn spec.capacity.withNodeSelector

```ts
withNodeSelector(nodeSelector)
```

"NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/"

### fn spec.capacity.withNodeSelectorMixin

```ts
withNodeSelectorMixin(nodeSelector)
```

"NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/"

**Note:** This function appends passed data to existing values

### fn spec.capacity.withOverhead

```ts
withOverhead(overhead)
```

"Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature."

### fn spec.capacity.withOverheadMixin

```ts
withOverheadMixin(overhead)
```

"Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature."

**Note:** This function appends passed data to existing values

### fn spec.capacity.withPreemptionPolicy

```ts
withPreemptionPolicy(preemptionPolicy)
```

"PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature."

### fn spec.capacity.withPriority

```ts
withPriority(priority)
```

"The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority."

### fn spec.capacity.withPriorityClassName

```ts
withPriorityClassName(priorityClassName)
```

"If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default."

### fn spec.capacity.withReadinessGates

```ts
withReadinessGates(readinessGates)
```

"If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md"

### fn spec.capacity.withReadinessGatesMixin

```ts
withReadinessGatesMixin(readinessGates)
```

"If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md"

**Note:** This function appends passed data to existing values

### fn spec.capacity.withRestartPolicy

```ts
withRestartPolicy(restartPolicy)
```

"Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy"

### fn spec.capacity.withRuntimeClassName

```ts
withRuntimeClassName(runtimeClassName)
```

"RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14."

### fn spec.capacity.withSchedulerName

```ts
withSchedulerName(schedulerName)
```

"If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler."

### fn spec.capacity.withServiceAccount

```ts
withServiceAccount(serviceAccount)
```

"DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead."

### fn spec.capacity.withServiceAccountName

```ts
withServiceAccountName(serviceAccountName)
```

"ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/"

### fn spec.capacity.withShareProcessNamespace

```ts
withShareProcessNamespace(shareProcessNamespace)
```

"Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false."

### fn spec.capacity.withSubdomain

```ts
withSubdomain(subdomain)
```

"If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all."

### fn spec.capacity.withTerminationGracePeriodSeconds

```ts
withTerminationGracePeriodSeconds(terminationGracePeriodSeconds)
```

"Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds."

### fn spec.capacity.withTolerations

```ts
withTolerations(tolerations)
```

"If specified, the pod's tolerations."

### fn spec.capacity.withTolerationsMixin

```ts
withTolerationsMixin(tolerations)
```

"If specified, the pod's tolerations."

**Note:** This function appends passed data to existing values

### fn spec.capacity.withTopologySpreadConstraints

```ts
withTopologySpreadConstraints(topologySpreadConstraints)
```

"TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. This field is alpha-level and is only honored by clusters that enables the EvenPodsSpread feature. All topologySpreadConstraints are ANDed."

### fn spec.capacity.withTopologySpreadConstraintsMixin

```ts
withTopologySpreadConstraintsMixin(topologySpreadConstraints)
```

"TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. This field is alpha-level and is only honored by clusters that enables the EvenPodsSpread feature. All topologySpreadConstraints are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.withVolumes

```ts
withVolumes(volumes)
```

"List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes"

### fn spec.capacity.withVolumesMixin

```ts
withVolumesMixin(volumes)
```

"List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes"

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity

"If specified, the pod's scheduling constraints"

## obj spec.capacity.affinity.nodeAffinity

"Describes node affinity scheduling rules for the pod."

### fn spec.capacity.affinity.nodeAffinity.withPreferredDuringSchedulingIgnoredDuringExecution

```ts
withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)
```

"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."

### fn spec.capacity.affinity.nodeAffinity.withPreferredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)
```

"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution

"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.withWeight

```ts
withWeight(weight)
```

"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100."

## obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference

"A node selector term, associated with the corresponding weight."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"A list of node selector requirements by node's labels."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"A list of node selector requirements by node's labels."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.withMatchFields

```ts
withMatchFields(matchFields)
```

"A list of node selector requirements by node's fields."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.withMatchFieldsMixin

```ts
withMatchFieldsMixin(matchFields)
```

"A list of node selector requirements by node's fields."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchExpressions

"A list of node selector requirements by node's labels."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchExpressions.withKey

```ts
withKey(key)
```

"The label key that the selector applies to."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchExpressions.withOperator

```ts
withOperator(operator)
```

"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchExpressions.withValues

```ts
withValues(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchFields

"A list of node selector requirements by node's fields."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchFields.withKey

```ts
withKey(key)
```

"The label key that the selector applies to."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchFields.withOperator

```ts
withOperator(operator)
```

"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchFields.withValues

```ts
withValues(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution.preference.matchFields.withValuesMixin

```ts
withValuesMixin(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution

"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNodeSelectorTerms

```ts
withNodeSelectorTerms(nodeSelectorTerms)
```

"Required. A list of node selector terms. The terms are ORed."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNodeSelectorTermsMixin

```ts
withNodeSelectorTermsMixin(nodeSelectorTerms)
```

"Required. A list of node selector terms. The terms are ORed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms

"Required. A list of node selector terms. The terms are ORed."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"A list of node selector requirements by node's labels."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"A list of node selector requirements by node's labels."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.withMatchFields

```ts
withMatchFields(matchFields)
```

"A list of node selector requirements by node's fields."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.withMatchFieldsMixin

```ts
withMatchFieldsMixin(matchFields)
```

"A list of node selector requirements by node's fields."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchExpressions

"A list of node selector requirements by node's labels."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchExpressions.withKey

```ts
withKey(key)
```

"The label key that the selector applies to."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchExpressions.withOperator

```ts
withOperator(operator)
```

"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchExpressions.withValues

```ts
withValues(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchFields

"A list of node selector requirements by node's fields."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchFields.withKey

```ts
withKey(key)
```

"The label key that the selector applies to."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchFields.withOperator

```ts
withOperator(operator)
```

"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchFields.withValues

```ts
withValues(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms.matchFields.withValuesMixin

```ts
withValuesMixin(values)
```

"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAffinity

"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s))."

### fn spec.capacity.affinity.podAffinity.withPreferredDuringSchedulingIgnoredDuringExecution

```ts
withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)
```

"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."

### fn spec.capacity.affinity.podAffinity.withPreferredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)
```

"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAffinity.withRequiredDuringSchedulingIgnoredDuringExecution

```ts
withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)
```

"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."

### fn spec.capacity.affinity.podAffinity.withRequiredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)
```

"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution

"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.withWeight

```ts
withWeight(weight)
```

"weight associated with matching the corresponding podAffinityTerm, in the range 1-100."

## obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm

"Required. A pod affinity term, associated with the corresponding weight."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.withNamespaces

```ts
withNamespaces(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.withNamespacesMixin

```ts
withNamespacesMixin(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.withTopologyKey

```ts
withTopologyKey(topologyKey)
```

"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."

## obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector

"A label query over a set of resources, in this case pods."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withKey

```ts
withKey(key)
```

"key is the label key that the selector applies to."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withOperator

```ts
withOperator(operator)
```

"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withValues

```ts
withValues(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.podAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution

"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNamespaces

```ts
withNamespaces(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNamespacesMixin

```ts
withNamespacesMixin(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.withTopologyKey

```ts
withTopologyKey(topologyKey)
```

"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."

## obj spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector

"A label query over a set of resources, in this case pods."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withKey

```ts
withKey(key)
```

"key is the label key that the selector applies to."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withOperator

```ts
withOperator(operator)
```

"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withValues

```ts
withValues(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.podAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAntiAffinity

"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s))."

### fn spec.capacity.affinity.podAntiAffinity.withPreferredDuringSchedulingIgnoredDuringExecution

```ts
withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)
```

"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."

### fn spec.capacity.affinity.podAntiAffinity.withPreferredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)
```

"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAntiAffinity.withRequiredDuringSchedulingIgnoredDuringExecution

```ts
withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)
```

"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."

### fn spec.capacity.affinity.podAntiAffinity.withRequiredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)
```

"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution

"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.withWeight

```ts
withWeight(weight)
```

"weight associated with matching the corresponding podAffinityTerm, in the range 1-100."

## obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm

"Required. A pod affinity term, associated with the corresponding weight."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.withNamespaces

```ts
withNamespaces(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.withNamespacesMixin

```ts
withNamespacesMixin(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.withTopologyKey

```ts
withTopologyKey(topologyKey)
```

"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."

## obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector

"A label query over a set of resources, in this case pods."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withKey

```ts
withKey(key)
```

"key is the label key that the selector applies to."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withOperator

```ts
withOperator(operator)
```

"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withValues

```ts
withValues(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution.podAffinityTerm.labelSelector.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution

"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNamespaces

```ts
withNamespaces(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNamespacesMixin

```ts
withNamespacesMixin(namespaces)
```

"namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.withTopologyKey

```ts
withTopologyKey(topologyKey)
```

"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."

## obj spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector

"A label query over a set of resources, in this case pods."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withKey

```ts
withKey(key)
```

"key is the label key that the selector applies to."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withOperator

```ts
withOperator(operator)
```

"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withValues

```ts
withValues(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

### fn spec.capacity.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution.labelSelector.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers

"List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated."

### fn spec.capacity.containers.withArgs

```ts
withArgs(args)
```

"Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

### fn spec.capacity.containers.withArgsMixin

```ts
withArgsMixin(args)
```

"Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withCommand

```ts
withCommand(command)
```

"Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

### fn spec.capacity.containers.withCommandMixin

```ts
withCommandMixin(command)
```

"Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withEnv

```ts
withEnv(env)
```

"List of environment variables to set in the container. Cannot be updated."

### fn spec.capacity.containers.withEnvFrom

```ts
withEnvFrom(envFrom)
```

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

### fn spec.capacity.containers.withEnvFromMixin

```ts
withEnvFromMixin(envFrom)
```

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withEnvMixin

```ts
withEnvMixin(env)
```

"List of environment variables to set in the container. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withImage

```ts
withImage(image)
```

"Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."

### fn spec.capacity.containers.withImagePullPolicy

```ts
withImagePullPolicy(imagePullPolicy)
```

"Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"

### fn spec.capacity.containers.withName

```ts
withName(name)
```

"Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated."

### fn spec.capacity.containers.withPorts

```ts
withPorts(ports)
```

"List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated."

### fn spec.capacity.containers.withPortsMixin

```ts
withPortsMixin(ports)
```

"List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withStdin

```ts
withStdin(stdin)
```

"Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."

### fn spec.capacity.containers.withStdinOnce

```ts
withStdinOnce(stdinOnce)
```

"Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"

### fn spec.capacity.containers.withTerminationMessagePath

```ts
withTerminationMessagePath(terminationMessagePath)
```

"Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."

### fn spec.capacity.containers.withTerminationMessagePolicy

```ts
withTerminationMessagePolicy(terminationMessagePolicy)
```

"Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."

### fn spec.capacity.containers.withTty

```ts
withTty(tty)
```

"Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."

### fn spec.capacity.containers.withVolumeDevices

```ts
withVolumeDevices(volumeDevices)
```

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

### fn spec.capacity.containers.withVolumeDevicesMixin

```ts
withVolumeDevicesMixin(volumeDevices)
```

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withVolumeMounts

```ts
withVolumeMounts(volumeMounts)
```

"Pod volumes to mount into the container's filesystem. Cannot be updated."

### fn spec.capacity.containers.withVolumeMountsMixin

```ts
withVolumeMountsMixin(volumeMounts)
```

"Pod volumes to mount into the container's filesystem. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.withWorkingDir

```ts
withWorkingDir(workingDir)
```

"Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."

## obj spec.capacity.containers.env

"List of environment variables to set in the container. Cannot be updated."

### fn spec.capacity.containers.env.withName

```ts
withName(name)
```

"Name of the environment variable. Must be a C_IDENTIFIER."

### fn spec.capacity.containers.env.withValue

```ts
withValue(value)
```

"Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."

## obj spec.capacity.containers.env.valueFrom

"Source for the environment variable's value. Cannot be used if value is not empty."

## obj spec.capacity.containers.env.valueFrom.configMapKeyRef

"Selects a key of a ConfigMap."

### fn spec.capacity.containers.env.valueFrom.configMapKeyRef.withKey

```ts
withKey(key)
```

"The key to select."

### fn spec.capacity.containers.env.valueFrom.configMapKeyRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.containers.env.valueFrom.configMapKeyRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap or its key must be defined"

## obj spec.capacity.containers.env.valueFrom.fieldRef

"Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."

### fn spec.capacity.containers.env.valueFrom.fieldRef.withApiVersion

```ts
withApiVersion(apiVersion)
```

"Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."

### fn spec.capacity.containers.env.valueFrom.fieldRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

"Path of the field to select in the specified API version."

## obj spec.capacity.containers.env.valueFrom.resourceFieldRef

"Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."

### fn spec.capacity.containers.env.valueFrom.resourceFieldRef.withContainerName

```ts
withContainerName(containerName)
```

"Container name: required for volumes, optional for env vars"

### fn spec.capacity.containers.env.valueFrom.resourceFieldRef.withDivisor

```ts
withDivisor(divisor)
```

"Specifies the output format of the exposed resources, defaults to \"1\

### fn spec.capacity.containers.env.valueFrom.resourceFieldRef.withResource

```ts
withResource(resource)
```

"Required: resource to select"

## obj spec.capacity.containers.env.valueFrom.secretKeyRef

"Selects a key of a secret in the pod's namespace"

### fn spec.capacity.containers.env.valueFrom.secretKeyRef.withKey

```ts
withKey(key)
```

"The key of the secret to select from.  Must be a valid secret key."

### fn spec.capacity.containers.env.valueFrom.secretKeyRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.containers.env.valueFrom.secretKeyRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret or its key must be defined"

## obj spec.capacity.containers.envFrom

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

### fn spec.capacity.containers.envFrom.withPrefix

```ts
withPrefix(prefix)
```

"An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."

## obj spec.capacity.containers.envFrom.configMapRef

"The ConfigMap to select from"

### fn spec.capacity.containers.envFrom.configMapRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.containers.envFrom.configMapRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap must be defined"

## obj spec.capacity.containers.envFrom.secretRef

"The Secret to select from"

### fn spec.capacity.containers.envFrom.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.containers.envFrom.secretRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret must be defined"

## obj spec.capacity.containers.lifecycle

"Actions that the management system should take in response to container lifecycle events. Cannot be updated."

## obj spec.capacity.containers.lifecycle.postStart

"PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"

## obj spec.capacity.containers.lifecycle.postStart.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.containers.lifecycle.postStart.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.containers.lifecycle.postStart.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.lifecycle.postStart.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.containers.lifecycle.postStart.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.containers.lifecycle.postStart.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.lifecycle.postStart.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.lifecycle.postStart.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.containers.lifecycle.postStart.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.containers.lifecycle.postStart.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.containers.lifecycle.postStart.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.lifecycle.postStart.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.containers.lifecycle.postStart.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.containers.lifecycle.postStart.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.containers.lifecycle.postStart.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.containers.lifecycle.postStart.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.containers.lifecycle.preStop

"PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"

## obj spec.capacity.containers.lifecycle.preStop.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.containers.lifecycle.preStop.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.containers.lifecycle.preStop.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.lifecycle.preStop.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.containers.lifecycle.preStop.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.containers.lifecycle.preStop.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.lifecycle.preStop.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.lifecycle.preStop.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.containers.lifecycle.preStop.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.containers.lifecycle.preStop.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.containers.lifecycle.preStop.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.lifecycle.preStop.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.containers.lifecycle.preStop.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.containers.lifecycle.preStop.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.containers.lifecycle.preStop.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.containers.lifecycle.preStop.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.containers.livenessProbe

"Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.containers.livenessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.containers.livenessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.containers.livenessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.containers.livenessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.containers.livenessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.containers.livenessProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.containers.livenessProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.containers.livenessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.livenessProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.containers.livenessProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.containers.livenessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.livenessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.livenessProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.containers.livenessProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.containers.livenessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.containers.livenessProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.livenessProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.containers.livenessProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.containers.livenessProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.containers.livenessProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.containers.livenessProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.containers.ports

"List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated."

### fn spec.capacity.containers.ports.withContainerPort

```ts
withContainerPort(containerPort)
```

"Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536."

### fn spec.capacity.containers.ports.withHostIP

```ts
withHostIP(hostIP)
```

"What host IP to bind the external port to."

### fn spec.capacity.containers.ports.withHostPort

```ts
withHostPort(hostPort)
```

"Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this."

### fn spec.capacity.containers.ports.withName

```ts
withName(name)
```

"If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services."

### fn spec.capacity.containers.ports.withProtocol

```ts
withProtocol(protocol)
```

"Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\"."

## obj spec.capacity.containers.readinessProbe

"Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.containers.readinessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.containers.readinessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.containers.readinessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.containers.readinessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.containers.readinessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.containers.readinessProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.containers.readinessProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.containers.readinessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.readinessProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.containers.readinessProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.containers.readinessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.readinessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.readinessProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.containers.readinessProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.containers.readinessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.containers.readinessProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.readinessProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.containers.readinessProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.containers.readinessProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.containers.readinessProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.containers.readinessProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.containers.resources

"Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.containers.resources.withLimits

```ts
withLimits(limits)
```

"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.containers.resources.withLimitsMixin

```ts
withLimitsMixin(limits)
```

"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.resources.withRequests

```ts
withRequests(requests)
```

"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.containers.resources.withRequestsMixin

```ts
withRequestsMixin(requests)
```

"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.securityContext

"Security options the pod should run with. More info: https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/"

### fn spec.capacity.containers.securityContext.withAllowPrivilegeEscalation

```ts
withAllowPrivilegeEscalation(allowPrivilegeEscalation)
```

"AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN"

### fn spec.capacity.containers.securityContext.withPrivileged

```ts
withPrivileged(privileged)
```

"Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false."

### fn spec.capacity.containers.securityContext.withProcMount

```ts
withProcMount(procMount)
```

"procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled."

### fn spec.capacity.containers.securityContext.withReadOnlyRootFilesystem

```ts
withReadOnlyRootFilesystem(readOnlyRootFilesystem)
```

"Whether this container has a read-only root filesystem. Default is false."

### fn spec.capacity.containers.securityContext.withRunAsGroup

```ts
withRunAsGroup(runAsGroup)
```

"The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.containers.securityContext.withRunAsNonRoot

```ts
withRunAsNonRoot(runAsNonRoot)
```

"Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.containers.securityContext.withRunAsUser

```ts
withRunAsUser(runAsUser)
```

"The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

## obj spec.capacity.containers.securityContext.capabilities

"The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime."

### fn spec.capacity.containers.securityContext.capabilities.withAdd

```ts
withAdd(add)
```

"Added capabilities"

### fn spec.capacity.containers.securityContext.capabilities.withAddMixin

```ts
withAddMixin(add)
```

"Added capabilities"

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.securityContext.capabilities.withDrop

```ts
withDrop(drop)
```

"Removed capabilities"

### fn spec.capacity.containers.securityContext.capabilities.withDropMixin

```ts
withDropMixin(drop)
```

"Removed capabilities"

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.securityContext.seLinuxOptions

"The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.containers.securityContext.seLinuxOptions.withLevel

```ts
withLevel(level)
```

"Level is SELinux level label that applies to the container."

### fn spec.capacity.containers.securityContext.seLinuxOptions.withRole

```ts
withRole(role)
```

"Role is a SELinux role label that applies to the container."

### fn spec.capacity.containers.securityContext.seLinuxOptions.withType

```ts
withType(type)
```

"Type is a SELinux type label that applies to the container."

### fn spec.capacity.containers.securityContext.seLinuxOptions.withUser

```ts
withUser(user)
```

"User is a SELinux user label that applies to the container."

## obj spec.capacity.containers.securityContext.windowsOptions

"The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.containers.securityContext.windowsOptions.withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

"GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.containers.securityContext.windowsOptions.withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

"GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.containers.securityContext.windowsOptions.withRunAsUserName

```ts
withRunAsUserName(runAsUserName)
```

"The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. This field is beta-level and may be disabled with the WindowsRunAsUserName feature flag."

## obj spec.capacity.containers.startupProbe

"StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is an alpha feature enabled by the StartupProbe feature flag. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.containers.startupProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.containers.startupProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.containers.startupProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.containers.startupProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.containers.startupProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.containers.startupProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.containers.startupProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.containers.startupProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.containers.startupProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.containers.startupProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.containers.startupProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.startupProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.containers.startupProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.containers.startupProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.containers.startupProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.containers.startupProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.containers.startupProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.containers.startupProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.containers.startupProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.containers.startupProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.containers.startupProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.containers.volumeDevices

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

### fn spec.capacity.containers.volumeDevices.withDevicePath

```ts
withDevicePath(devicePath)
```

"devicePath is the path inside of the container that the device will be mapped to."

### fn spec.capacity.containers.volumeDevices.withName

```ts
withName(name)
```

"name must match the name of a persistentVolumeClaim in the pod"

## obj spec.capacity.containers.volumeMounts

"Pod volumes to mount into the container's filesystem. Cannot be updated."

### fn spec.capacity.containers.volumeMounts.withMountPath

```ts
withMountPath(mountPath)
```

"Path within the container at which the volume should be mounted.  Must not contain ':'."

### fn spec.capacity.containers.volumeMounts.withMountPropagation

```ts
withMountPropagation(mountPropagation)
```

"mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10."

### fn spec.capacity.containers.volumeMounts.withName

```ts
withName(name)
```

"This must match the Name of a Volume."

### fn spec.capacity.containers.volumeMounts.withReadOnly

```ts
withReadOnly(readOnly)
```

"Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."

### fn spec.capacity.containers.volumeMounts.withSubPath

```ts
withSubPath(subPath)
```

"Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."

### fn spec.capacity.containers.volumeMounts.withSubPathExpr

```ts
withSubPathExpr(subPathExpr)
```

"Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."

## obj spec.capacity.dnsConfig

"Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy."

### fn spec.capacity.dnsConfig.withNameservers

```ts
withNameservers(nameservers)
```

"A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed."

### fn spec.capacity.dnsConfig.withNameserversMixin

```ts
withNameserversMixin(nameservers)
```

"A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.dnsConfig.withOptions

```ts
withOptions(options)
```

"A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy."

### fn spec.capacity.dnsConfig.withOptionsMixin

```ts
withOptionsMixin(options)
```

"A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy."

**Note:** This function appends passed data to existing values

### fn spec.capacity.dnsConfig.withSearches

```ts
withSearches(searches)
```

"A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed."

### fn spec.capacity.dnsConfig.withSearchesMixin

```ts
withSearchesMixin(searches)
```

"A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.dnsConfig.options

"A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy."

### fn spec.capacity.dnsConfig.options.withName

```ts
withName(name)
```

"Required."

### fn spec.capacity.dnsConfig.options.withValue

```ts
withValue(value)
```



## obj spec.capacity.ephemeralContainers

"List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature."

### fn spec.capacity.ephemeralContainers.withArgs

```ts
withArgs(args)
```

"Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

### fn spec.capacity.ephemeralContainers.withArgsMixin

```ts
withArgsMixin(args)
```

"Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withCommand

```ts
withCommand(command)
```

"Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

### fn spec.capacity.ephemeralContainers.withCommandMixin

```ts
withCommandMixin(command)
```

"Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withEnv

```ts
withEnv(env)
```

"List of environment variables to set in the container. Cannot be updated."

### fn spec.capacity.ephemeralContainers.withEnvFrom

```ts
withEnvFrom(envFrom)
```

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

### fn spec.capacity.ephemeralContainers.withEnvFromMixin

```ts
withEnvFromMixin(envFrom)
```

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withEnvMixin

```ts
withEnvMixin(env)
```

"List of environment variables to set in the container. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withImage

```ts
withImage(image)
```

"Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images"

### fn spec.capacity.ephemeralContainers.withImagePullPolicy

```ts
withImagePullPolicy(imagePullPolicy)
```

"Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"

### fn spec.capacity.ephemeralContainers.withName

```ts
withName(name)
```

"Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers."

### fn spec.capacity.ephemeralContainers.withPorts

```ts
withPorts(ports)
```

"Ports are not allowed for ephemeral containers."

### fn spec.capacity.ephemeralContainers.withPortsMixin

```ts
withPortsMixin(ports)
```

"Ports are not allowed for ephemeral containers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withStdin

```ts
withStdin(stdin)
```

"Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."

### fn spec.capacity.ephemeralContainers.withStdinOnce

```ts
withStdinOnce(stdinOnce)
```

"Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"

### fn spec.capacity.ephemeralContainers.withTargetContainerName

```ts
withTargetContainerName(targetContainerName)
```

"If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container is run in whatever namespaces are shared for the pod. Note that the container runtime must support this feature."

### fn spec.capacity.ephemeralContainers.withTerminationMessagePath

```ts
withTerminationMessagePath(terminationMessagePath)
```

"Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."

### fn spec.capacity.ephemeralContainers.withTerminationMessagePolicy

```ts
withTerminationMessagePolicy(terminationMessagePolicy)
```

"Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."

### fn spec.capacity.ephemeralContainers.withTty

```ts
withTty(tty)
```

"Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."

### fn spec.capacity.ephemeralContainers.withVolumeDevices

```ts
withVolumeDevices(volumeDevices)
```

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

### fn spec.capacity.ephemeralContainers.withVolumeDevicesMixin

```ts
withVolumeDevicesMixin(volumeDevices)
```

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withVolumeMounts

```ts
withVolumeMounts(volumeMounts)
```

"Pod volumes to mount into the container's filesystem. Cannot be updated."

### fn spec.capacity.ephemeralContainers.withVolumeMountsMixin

```ts
withVolumeMountsMixin(volumeMounts)
```

"Pod volumes to mount into the container's filesystem. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.withWorkingDir

```ts
withWorkingDir(workingDir)
```

"Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."

## obj spec.capacity.ephemeralContainers.env

"List of environment variables to set in the container. Cannot be updated."

### fn spec.capacity.ephemeralContainers.env.withName

```ts
withName(name)
```

"Name of the environment variable. Must be a C_IDENTIFIER."

### fn spec.capacity.ephemeralContainers.env.withValue

```ts
withValue(value)
```

"Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."

## obj spec.capacity.ephemeralContainers.env.valueFrom

"Source for the environment variable's value. Cannot be used if value is not empty."

## obj spec.capacity.ephemeralContainers.env.valueFrom.configMapKeyRef

"Selects a key of a ConfigMap."

### fn spec.capacity.ephemeralContainers.env.valueFrom.configMapKeyRef.withKey

```ts
withKey(key)
```

"The key to select."

### fn spec.capacity.ephemeralContainers.env.valueFrom.configMapKeyRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.ephemeralContainers.env.valueFrom.configMapKeyRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap or its key must be defined"

## obj spec.capacity.ephemeralContainers.env.valueFrom.fieldRef

"Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."

### fn spec.capacity.ephemeralContainers.env.valueFrom.fieldRef.withApiVersion

```ts
withApiVersion(apiVersion)
```

"Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."

### fn spec.capacity.ephemeralContainers.env.valueFrom.fieldRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

"Path of the field to select in the specified API version."

## obj spec.capacity.ephemeralContainers.env.valueFrom.resourceFieldRef

"Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."

### fn spec.capacity.ephemeralContainers.env.valueFrom.resourceFieldRef.withContainerName

```ts
withContainerName(containerName)
```

"Container name: required for volumes, optional for env vars"

### fn spec.capacity.ephemeralContainers.env.valueFrom.resourceFieldRef.withDivisor

```ts
withDivisor(divisor)
```

"Specifies the output format of the exposed resources, defaults to \"1\

### fn spec.capacity.ephemeralContainers.env.valueFrom.resourceFieldRef.withResource

```ts
withResource(resource)
```

"Required: resource to select"

## obj spec.capacity.ephemeralContainers.env.valueFrom.secretKeyRef

"Selects a key of a secret in the pod's namespace"

### fn spec.capacity.ephemeralContainers.env.valueFrom.secretKeyRef.withKey

```ts
withKey(key)
```

"The key of the secret to select from.  Must be a valid secret key."

### fn spec.capacity.ephemeralContainers.env.valueFrom.secretKeyRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.ephemeralContainers.env.valueFrom.secretKeyRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret or its key must be defined"

## obj spec.capacity.ephemeralContainers.envFrom

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

### fn spec.capacity.ephemeralContainers.envFrom.withPrefix

```ts
withPrefix(prefix)
```

"An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."

## obj spec.capacity.ephemeralContainers.envFrom.configMapRef

"The ConfigMap to select from"

### fn spec.capacity.ephemeralContainers.envFrom.configMapRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.ephemeralContainers.envFrom.configMapRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap must be defined"

## obj spec.capacity.ephemeralContainers.envFrom.secretRef

"The Secret to select from"

### fn spec.capacity.ephemeralContainers.envFrom.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.ephemeralContainers.envFrom.secretRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret must be defined"

## obj spec.capacity.ephemeralContainers.lifecycle

"Lifecycle is not allowed for ephemeral containers."

## obj spec.capacity.ephemeralContainers.lifecycle.postStart

"PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"

## obj spec.capacity.ephemeralContainers.lifecycle.postStart.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.ephemeralContainers.lifecycle.postStart.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.ephemeralContainers.lifecycle.postStart.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.ephemeralContainers.lifecycle.preStop

"PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"

## obj spec.capacity.ephemeralContainers.lifecycle.preStop.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.ephemeralContainers.lifecycle.preStop.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.ephemeralContainers.lifecycle.preStop.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.ephemeralContainers.livenessProbe

"Probes are not allowed for ephemeral containers."

### fn spec.capacity.ephemeralContainers.livenessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.livenessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.ephemeralContainers.livenessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.livenessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.livenessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.ephemeralContainers.livenessProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.ephemeralContainers.livenessProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.ephemeralContainers.livenessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.livenessProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.ephemeralContainers.livenessProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.ephemeralContainers.livenessProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.ephemeralContainers.livenessProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.ephemeralContainers.livenessProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.ephemeralContainers.livenessProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.ephemeralContainers.ports

"Ports are not allowed for ephemeral containers."

### fn spec.capacity.ephemeralContainers.ports.withContainerPort

```ts
withContainerPort(containerPort)
```

"Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536."

### fn spec.capacity.ephemeralContainers.ports.withHostIP

```ts
withHostIP(hostIP)
```

"What host IP to bind the external port to."

### fn spec.capacity.ephemeralContainers.ports.withHostPort

```ts
withHostPort(hostPort)
```

"Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this."

### fn spec.capacity.ephemeralContainers.ports.withName

```ts
withName(name)
```

"If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services."

### fn spec.capacity.ephemeralContainers.ports.withProtocol

```ts
withProtocol(protocol)
```

"Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\"."

## obj spec.capacity.ephemeralContainers.readinessProbe

"Probes are not allowed for ephemeral containers."

### fn spec.capacity.ephemeralContainers.readinessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.readinessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.ephemeralContainers.readinessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.readinessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.readinessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.ephemeralContainers.readinessProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.ephemeralContainers.readinessProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.ephemeralContainers.readinessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.readinessProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.ephemeralContainers.readinessProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.ephemeralContainers.readinessProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.ephemeralContainers.readinessProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.ephemeralContainers.readinessProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.ephemeralContainers.readinessProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.ephemeralContainers.resources

"Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod."

### fn spec.capacity.ephemeralContainers.resources.withLimits

```ts
withLimits(limits)
```

"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.ephemeralContainers.resources.withLimitsMixin

```ts
withLimitsMixin(limits)
```

"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.resources.withRequests

```ts
withRequests(requests)
```

"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.ephemeralContainers.resources.withRequestsMixin

```ts
withRequestsMixin(requests)
```

"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.securityContext

"SecurityContext is not allowed for ephemeral containers."

### fn spec.capacity.ephemeralContainers.securityContext.withAllowPrivilegeEscalation

```ts
withAllowPrivilegeEscalation(allowPrivilegeEscalation)
```

"AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN"

### fn spec.capacity.ephemeralContainers.securityContext.withPrivileged

```ts
withPrivileged(privileged)
```

"Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false."

### fn spec.capacity.ephemeralContainers.securityContext.withProcMount

```ts
withProcMount(procMount)
```

"procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled."

### fn spec.capacity.ephemeralContainers.securityContext.withReadOnlyRootFilesystem

```ts
withReadOnlyRootFilesystem(readOnlyRootFilesystem)
```

"Whether this container has a read-only root filesystem. Default is false."

### fn spec.capacity.ephemeralContainers.securityContext.withRunAsGroup

```ts
withRunAsGroup(runAsGroup)
```

"The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.ephemeralContainers.securityContext.withRunAsNonRoot

```ts
withRunAsNonRoot(runAsNonRoot)
```

"Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.ephemeralContainers.securityContext.withRunAsUser

```ts
withRunAsUser(runAsUser)
```

"The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

## obj spec.capacity.ephemeralContainers.securityContext.capabilities

"The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime."

### fn spec.capacity.ephemeralContainers.securityContext.capabilities.withAdd

```ts
withAdd(add)
```

"Added capabilities"

### fn spec.capacity.ephemeralContainers.securityContext.capabilities.withAddMixin

```ts
withAddMixin(add)
```

"Added capabilities"

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.securityContext.capabilities.withDrop

```ts
withDrop(drop)
```

"Removed capabilities"

### fn spec.capacity.ephemeralContainers.securityContext.capabilities.withDropMixin

```ts
withDropMixin(drop)
```

"Removed capabilities"

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.securityContext.seLinuxOptions

"The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.ephemeralContainers.securityContext.seLinuxOptions.withLevel

```ts
withLevel(level)
```

"Level is SELinux level label that applies to the container."

### fn spec.capacity.ephemeralContainers.securityContext.seLinuxOptions.withRole

```ts
withRole(role)
```

"Role is a SELinux role label that applies to the container."

### fn spec.capacity.ephemeralContainers.securityContext.seLinuxOptions.withType

```ts
withType(type)
```

"Type is a SELinux type label that applies to the container."

### fn spec.capacity.ephemeralContainers.securityContext.seLinuxOptions.withUser

```ts
withUser(user)
```

"User is a SELinux user label that applies to the container."

## obj spec.capacity.ephemeralContainers.securityContext.windowsOptions

"The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.ephemeralContainers.securityContext.windowsOptions.withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

"GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.ephemeralContainers.securityContext.windowsOptions.withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

"GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.ephemeralContainers.securityContext.windowsOptions.withRunAsUserName

```ts
withRunAsUserName(runAsUserName)
```

"The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. This field is beta-level and may be disabled with the WindowsRunAsUserName feature flag."

## obj spec.capacity.ephemeralContainers.startupProbe

"Probes are not allowed for ephemeral containers."

### fn spec.capacity.ephemeralContainers.startupProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.startupProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.ephemeralContainers.startupProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.startupProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.ephemeralContainers.startupProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.ephemeralContainers.startupProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.ephemeralContainers.startupProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.ephemeralContainers.startupProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.ephemeralContainers.startupProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.ephemeralContainers.startupProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.ephemeralContainers.startupProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.ephemeralContainers.startupProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.ephemeralContainers.startupProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.ephemeralContainers.startupProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.ephemeralContainers.volumeDevices

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

### fn spec.capacity.ephemeralContainers.volumeDevices.withDevicePath

```ts
withDevicePath(devicePath)
```

"devicePath is the path inside of the container that the device will be mapped to."

### fn spec.capacity.ephemeralContainers.volumeDevices.withName

```ts
withName(name)
```

"name must match the name of a persistentVolumeClaim in the pod"

## obj spec.capacity.ephemeralContainers.volumeMounts

"Pod volumes to mount into the container's filesystem. Cannot be updated."

### fn spec.capacity.ephemeralContainers.volumeMounts.withMountPath

```ts
withMountPath(mountPath)
```

"Path within the container at which the volume should be mounted.  Must not contain ':'."

### fn spec.capacity.ephemeralContainers.volumeMounts.withMountPropagation

```ts
withMountPropagation(mountPropagation)
```

"mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10."

### fn spec.capacity.ephemeralContainers.volumeMounts.withName

```ts
withName(name)
```

"This must match the Name of a Volume."

### fn spec.capacity.ephemeralContainers.volumeMounts.withReadOnly

```ts
withReadOnly(readOnly)
```

"Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."

### fn spec.capacity.ephemeralContainers.volumeMounts.withSubPath

```ts
withSubPath(subPath)
```

"Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."

### fn spec.capacity.ephemeralContainers.volumeMounts.withSubPathExpr

```ts
withSubPathExpr(subPathExpr)
```

"Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."

## obj spec.capacity.hostAliases

"HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods."

### fn spec.capacity.hostAliases.withHostnames

```ts
withHostnames(hostnames)
```

"Hostnames for the above IP address."

### fn spec.capacity.hostAliases.withHostnamesMixin

```ts
withHostnamesMixin(hostnames)
```

"Hostnames for the above IP address."

**Note:** This function appends passed data to existing values

### fn spec.capacity.hostAliases.withIp

```ts
withIp(ip)
```

"IP address of the host file entry."

## obj spec.capacity.imagePullSecrets

"ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod"

### fn spec.capacity.imagePullSecrets.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.initContainers

"List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/"

### fn spec.capacity.initContainers.withArgs

```ts
withArgs(args)
```

"Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

### fn spec.capacity.initContainers.withArgsMixin

```ts
withArgsMixin(args)
```

"Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withCommand

```ts
withCommand(command)
```

"Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

### fn spec.capacity.initContainers.withCommandMixin

```ts
withCommandMixin(command)
```

"Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withEnv

```ts
withEnv(env)
```

"List of environment variables to set in the container. Cannot be updated."

### fn spec.capacity.initContainers.withEnvFrom

```ts
withEnvFrom(envFrom)
```

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

### fn spec.capacity.initContainers.withEnvFromMixin

```ts
withEnvFromMixin(envFrom)
```

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withEnvMixin

```ts
withEnvMixin(env)
```

"List of environment variables to set in the container. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withImage

```ts
withImage(image)
```

"Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."

### fn spec.capacity.initContainers.withImagePullPolicy

```ts
withImagePullPolicy(imagePullPolicy)
```

"Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"

### fn spec.capacity.initContainers.withName

```ts
withName(name)
```

"Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated."

### fn spec.capacity.initContainers.withPorts

```ts
withPorts(ports)
```

"List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated."

### fn spec.capacity.initContainers.withPortsMixin

```ts
withPortsMixin(ports)
```

"List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withStdin

```ts
withStdin(stdin)
```

"Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."

### fn spec.capacity.initContainers.withStdinOnce

```ts
withStdinOnce(stdinOnce)
```

"Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"

### fn spec.capacity.initContainers.withTerminationMessagePath

```ts
withTerminationMessagePath(terminationMessagePath)
```

"Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."

### fn spec.capacity.initContainers.withTerminationMessagePolicy

```ts
withTerminationMessagePolicy(terminationMessagePolicy)
```

"Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."

### fn spec.capacity.initContainers.withTty

```ts
withTty(tty)
```

"Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."

### fn spec.capacity.initContainers.withVolumeDevices

```ts
withVolumeDevices(volumeDevices)
```

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

### fn spec.capacity.initContainers.withVolumeDevicesMixin

```ts
withVolumeDevicesMixin(volumeDevices)
```

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withVolumeMounts

```ts
withVolumeMounts(volumeMounts)
```

"Pod volumes to mount into the container's filesystem. Cannot be updated."

### fn spec.capacity.initContainers.withVolumeMountsMixin

```ts
withVolumeMountsMixin(volumeMounts)
```

"Pod volumes to mount into the container's filesystem. Cannot be updated."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.withWorkingDir

```ts
withWorkingDir(workingDir)
```

"Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."

## obj spec.capacity.initContainers.env

"List of environment variables to set in the container. Cannot be updated."

### fn spec.capacity.initContainers.env.withName

```ts
withName(name)
```

"Name of the environment variable. Must be a C_IDENTIFIER."

### fn spec.capacity.initContainers.env.withValue

```ts
withValue(value)
```

"Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."

## obj spec.capacity.initContainers.env.valueFrom

"Source for the environment variable's value. Cannot be used if value is not empty."

## obj spec.capacity.initContainers.env.valueFrom.configMapKeyRef

"Selects a key of a ConfigMap."

### fn spec.capacity.initContainers.env.valueFrom.configMapKeyRef.withKey

```ts
withKey(key)
```

"The key to select."

### fn spec.capacity.initContainers.env.valueFrom.configMapKeyRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.initContainers.env.valueFrom.configMapKeyRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap or its key must be defined"

## obj spec.capacity.initContainers.env.valueFrom.fieldRef

"Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."

### fn spec.capacity.initContainers.env.valueFrom.fieldRef.withApiVersion

```ts
withApiVersion(apiVersion)
```

"Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."

### fn spec.capacity.initContainers.env.valueFrom.fieldRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

"Path of the field to select in the specified API version."

## obj spec.capacity.initContainers.env.valueFrom.resourceFieldRef

"Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."

### fn spec.capacity.initContainers.env.valueFrom.resourceFieldRef.withContainerName

```ts
withContainerName(containerName)
```

"Container name: required for volumes, optional for env vars"

### fn spec.capacity.initContainers.env.valueFrom.resourceFieldRef.withDivisor

```ts
withDivisor(divisor)
```

"Specifies the output format of the exposed resources, defaults to \"1\

### fn spec.capacity.initContainers.env.valueFrom.resourceFieldRef.withResource

```ts
withResource(resource)
```

"Required: resource to select"

## obj spec.capacity.initContainers.env.valueFrom.secretKeyRef

"Selects a key of a secret in the pod's namespace"

### fn spec.capacity.initContainers.env.valueFrom.secretKeyRef.withKey

```ts
withKey(key)
```

"The key of the secret to select from.  Must be a valid secret key."

### fn spec.capacity.initContainers.env.valueFrom.secretKeyRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.initContainers.env.valueFrom.secretKeyRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret or its key must be defined"

## obj spec.capacity.initContainers.envFrom

"List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."

### fn spec.capacity.initContainers.envFrom.withPrefix

```ts
withPrefix(prefix)
```

"An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."

## obj spec.capacity.initContainers.envFrom.configMapRef

"The ConfigMap to select from"

### fn spec.capacity.initContainers.envFrom.configMapRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.initContainers.envFrom.configMapRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap must be defined"

## obj spec.capacity.initContainers.envFrom.secretRef

"The Secret to select from"

### fn spec.capacity.initContainers.envFrom.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.initContainers.envFrom.secretRef.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret must be defined"

## obj spec.capacity.initContainers.lifecycle

"Actions that the management system should take in response to container lifecycle events. Cannot be updated."

## obj spec.capacity.initContainers.lifecycle.postStart

"PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"

## obj spec.capacity.initContainers.lifecycle.postStart.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.initContainers.lifecycle.postStart.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.initContainers.lifecycle.postStart.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.lifecycle.postStart.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.initContainers.lifecycle.postStart.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.initContainers.lifecycle.postStart.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.initContainers.lifecycle.postStart.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.initContainers.lifecycle.postStart.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.initContainers.lifecycle.postStart.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.initContainers.lifecycle.preStop

"PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The reason for termination is passed to the handler. The Pod's termination grace period countdown begins before the PreStop hooked is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period. Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"

## obj spec.capacity.initContainers.lifecycle.preStop.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.initContainers.lifecycle.preStop.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.initContainers.lifecycle.preStop.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.lifecycle.preStop.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.initContainers.lifecycle.preStop.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.initContainers.lifecycle.preStop.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.initContainers.lifecycle.preStop.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.initContainers.lifecycle.preStop.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.initContainers.lifecycle.preStop.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.initContainers.livenessProbe

"Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.initContainers.livenessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.initContainers.livenessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.initContainers.livenessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.initContainers.livenessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.initContainers.livenessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.initContainers.livenessProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.initContainers.livenessProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.initContainers.livenessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.livenessProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.initContainers.livenessProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.initContainers.livenessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.livenessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.livenessProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.initContainers.livenessProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.initContainers.livenessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.initContainers.livenessProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.livenessProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.initContainers.livenessProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.initContainers.livenessProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.initContainers.livenessProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.initContainers.livenessProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.initContainers.ports

"List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated."

### fn spec.capacity.initContainers.ports.withContainerPort

```ts
withContainerPort(containerPort)
```

"Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536."

### fn spec.capacity.initContainers.ports.withHostIP

```ts
withHostIP(hostIP)
```

"What host IP to bind the external port to."

### fn spec.capacity.initContainers.ports.withHostPort

```ts
withHostPort(hostPort)
```

"Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this."

### fn spec.capacity.initContainers.ports.withName

```ts
withName(name)
```

"If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services."

### fn spec.capacity.initContainers.ports.withProtocol

```ts
withProtocol(protocol)
```

"Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\"."

## obj spec.capacity.initContainers.readinessProbe

"Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.initContainers.readinessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.initContainers.readinessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.initContainers.readinessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.initContainers.readinessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.initContainers.readinessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.initContainers.readinessProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.initContainers.readinessProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.initContainers.readinessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.readinessProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.initContainers.readinessProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.initContainers.readinessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.readinessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.readinessProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.initContainers.readinessProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.initContainers.readinessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.initContainers.readinessProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.readinessProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.initContainers.readinessProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.initContainers.readinessProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.initContainers.readinessProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.initContainers.readinessProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.initContainers.resources

"Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.initContainers.resources.withLimits

```ts
withLimits(limits)
```

"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.initContainers.resources.withLimitsMixin

```ts
withLimitsMixin(limits)
```

"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.resources.withRequests

```ts
withRequests(requests)
```

"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

### fn spec.capacity.initContainers.resources.withRequestsMixin

```ts
withRequestsMixin(requests)
```

"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.securityContext

"Security options the pod should run with. More info: https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/"

### fn spec.capacity.initContainers.securityContext.withAllowPrivilegeEscalation

```ts
withAllowPrivilegeEscalation(allowPrivilegeEscalation)
```

"AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN"

### fn spec.capacity.initContainers.securityContext.withPrivileged

```ts
withPrivileged(privileged)
```

"Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false."

### fn spec.capacity.initContainers.securityContext.withProcMount

```ts
withProcMount(procMount)
```

"procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled."

### fn spec.capacity.initContainers.securityContext.withReadOnlyRootFilesystem

```ts
withReadOnlyRootFilesystem(readOnlyRootFilesystem)
```

"Whether this container has a read-only root filesystem. Default is false."

### fn spec.capacity.initContainers.securityContext.withRunAsGroup

```ts
withRunAsGroup(runAsGroup)
```

"The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.initContainers.securityContext.withRunAsNonRoot

```ts
withRunAsNonRoot(runAsNonRoot)
```

"Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.initContainers.securityContext.withRunAsUser

```ts
withRunAsUser(runAsUser)
```

"The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

## obj spec.capacity.initContainers.securityContext.capabilities

"The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime."

### fn spec.capacity.initContainers.securityContext.capabilities.withAdd

```ts
withAdd(add)
```

"Added capabilities"

### fn spec.capacity.initContainers.securityContext.capabilities.withAddMixin

```ts
withAddMixin(add)
```

"Added capabilities"

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.securityContext.capabilities.withDrop

```ts
withDrop(drop)
```

"Removed capabilities"

### fn spec.capacity.initContainers.securityContext.capabilities.withDropMixin

```ts
withDropMixin(drop)
```

"Removed capabilities"

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.securityContext.seLinuxOptions

"The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.initContainers.securityContext.seLinuxOptions.withLevel

```ts
withLevel(level)
```

"Level is SELinux level label that applies to the container."

### fn spec.capacity.initContainers.securityContext.seLinuxOptions.withRole

```ts
withRole(role)
```

"Role is a SELinux role label that applies to the container."

### fn spec.capacity.initContainers.securityContext.seLinuxOptions.withType

```ts
withType(type)
```

"Type is a SELinux type label that applies to the container."

### fn spec.capacity.initContainers.securityContext.seLinuxOptions.withUser

```ts
withUser(user)
```

"User is a SELinux user label that applies to the container."

## obj spec.capacity.initContainers.securityContext.windowsOptions

"The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.initContainers.securityContext.windowsOptions.withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

"GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.initContainers.securityContext.windowsOptions.withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

"GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.initContainers.securityContext.windowsOptions.withRunAsUserName

```ts
withRunAsUserName(runAsUserName)
```

"The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. This field is beta-level and may be disabled with the WindowsRunAsUserName feature flag."

## obj spec.capacity.initContainers.startupProbe

"StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is an alpha feature enabled by the StartupProbe feature flag. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.initContainers.startupProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

"Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."

### fn spec.capacity.initContainers.startupProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

"Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

### fn spec.capacity.initContainers.startupProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

"How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."

### fn spec.capacity.initContainers.startupProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

"Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."

### fn spec.capacity.initContainers.startupProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

"Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"

## obj spec.capacity.initContainers.startupProbe.exec

"One and only one of the following should be specified. Exec specifies the action to take."

### fn spec.capacity.initContainers.startupProbe.exec.withCommand

```ts
withCommand(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

### fn spec.capacity.initContainers.startupProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

"Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."

**Note:** This function appends passed data to existing values

## obj spec.capacity.initContainers.startupProbe.httpGet

"HTTPGet specifies the http request to perform."

### fn spec.capacity.initContainers.startupProbe.httpGet.withHost

```ts
withHost(host)
```

"Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."

### fn spec.capacity.initContainers.startupProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.startupProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

"Custom headers to set in the request. HTTP allows repeated headers."

**Note:** This function appends passed data to existing values

### fn spec.capacity.initContainers.startupProbe.httpGet.withPath

```ts
withPath(path)
```

"Path to access on the HTTP server."

### fn spec.capacity.initContainers.startupProbe.httpGet.withPort

```ts
withPort(port)
```

"Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

### fn spec.capacity.initContainers.startupProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

"Scheme to use for connecting to the host. Defaults to HTTP."

## obj spec.capacity.initContainers.startupProbe.httpGet.httpHeaders

"Custom headers to set in the request. HTTP allows repeated headers."

### fn spec.capacity.initContainers.startupProbe.httpGet.httpHeaders.withName

```ts
withName(name)
```

"The header field name"

### fn spec.capacity.initContainers.startupProbe.httpGet.httpHeaders.withValue

```ts
withValue(value)
```

"The header field value"

## obj spec.capacity.initContainers.startupProbe.tcpSocket

"TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported TODO: implement a realistic TCP lifecycle hook"

### fn spec.capacity.initContainers.startupProbe.tcpSocket.withHost

```ts
withHost(host)
```

"Optional: Host name to connect to, defaults to the pod IP."

### fn spec.capacity.initContainers.startupProbe.tcpSocket.withPort

```ts
withPort(port)
```

"Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."

## obj spec.capacity.initContainers.volumeDevices

"volumeDevices is the list of block devices to be used by the container. This is a beta feature."

### fn spec.capacity.initContainers.volumeDevices.withDevicePath

```ts
withDevicePath(devicePath)
```

"devicePath is the path inside of the container that the device will be mapped to."

### fn spec.capacity.initContainers.volumeDevices.withName

```ts
withName(name)
```

"name must match the name of a persistentVolumeClaim in the pod"

## obj spec.capacity.initContainers.volumeMounts

"Pod volumes to mount into the container's filesystem. Cannot be updated."

### fn spec.capacity.initContainers.volumeMounts.withMountPath

```ts
withMountPath(mountPath)
```

"Path within the container at which the volume should be mounted.  Must not contain ':'."

### fn spec.capacity.initContainers.volumeMounts.withMountPropagation

```ts
withMountPropagation(mountPropagation)
```

"mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10."

### fn spec.capacity.initContainers.volumeMounts.withName

```ts
withName(name)
```

"This must match the Name of a Volume."

### fn spec.capacity.initContainers.volumeMounts.withReadOnly

```ts
withReadOnly(readOnly)
```

"Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."

### fn spec.capacity.initContainers.volumeMounts.withSubPath

```ts
withSubPath(subPath)
```

"Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."

### fn spec.capacity.initContainers.volumeMounts.withSubPathExpr

```ts
withSubPathExpr(subPathExpr)
```

"Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."

## obj spec.capacity.readinessGates

"If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md"

### fn spec.capacity.readinessGates.withConditionType

```ts
withConditionType(conditionType)
```

"ConditionType refers to a condition in the pod's condition list with matching type."

## obj spec.capacity.securityContext

"SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field."

### fn spec.capacity.securityContext.withFsGroup

```ts
withFsGroup(fsGroup)
```

"A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod: \n 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw---- \n If unset, the Kubelet will not modify the ownership and permissions of any volume."

### fn spec.capacity.securityContext.withRunAsGroup

```ts
withRunAsGroup(runAsGroup)
```

"The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."

### fn spec.capacity.securityContext.withRunAsNonRoot

```ts
withRunAsNonRoot(runAsNonRoot)
```

"Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.securityContext.withRunAsUser

```ts
withRunAsUser(runAsUser)
```

"The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."

### fn spec.capacity.securityContext.withSupplementalGroups

```ts
withSupplementalGroups(supplementalGroups)
```

"A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container."

### fn spec.capacity.securityContext.withSupplementalGroupsMixin

```ts
withSupplementalGroupsMixin(supplementalGroups)
```

"A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container."

**Note:** This function appends passed data to existing values

### fn spec.capacity.securityContext.withSysctls

```ts
withSysctls(sysctls)
```

"Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch."

### fn spec.capacity.securityContext.withSysctlsMixin

```ts
withSysctlsMixin(sysctls)
```

"Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.securityContext.seLinuxOptions

"The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container."

### fn spec.capacity.securityContext.seLinuxOptions.withLevel

```ts
withLevel(level)
```

"Level is SELinux level label that applies to the container."

### fn spec.capacity.securityContext.seLinuxOptions.withRole

```ts
withRole(role)
```

"Role is a SELinux role label that applies to the container."

### fn spec.capacity.securityContext.seLinuxOptions.withType

```ts
withType(type)
```

"Type is a SELinux type label that applies to the container."

### fn spec.capacity.securityContext.seLinuxOptions.withUser

```ts
withUser(user)
```

"User is a SELinux user label that applies to the container."

## obj spec.capacity.securityContext.sysctls

"Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch."

### fn spec.capacity.securityContext.sysctls.withName

```ts
withName(name)
```

"Name of a property to set"

### fn spec.capacity.securityContext.sysctls.withValue

```ts
withValue(value)
```

"Value of a property to set"

## obj spec.capacity.securityContext.windowsOptions

"The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."

### fn spec.capacity.securityContext.windowsOptions.withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

"GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.securityContext.windowsOptions.withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

"GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag."

### fn spec.capacity.securityContext.windowsOptions.withRunAsUserName

```ts
withRunAsUserName(runAsUserName)
```

"The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. This field is beta-level and may be disabled with the WindowsRunAsUserName feature flag."

## obj spec.capacity.tolerations

"If specified, the pod's tolerations."

### fn spec.capacity.tolerations.withEffect

```ts
withEffect(effect)
```

"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute."

### fn spec.capacity.tolerations.withKey

```ts
withKey(key)
```

"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys."

### fn spec.capacity.tolerations.withOperator

```ts
withOperator(operator)
```

"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category."

### fn spec.capacity.tolerations.withTolerationSeconds

```ts
withTolerationSeconds(tolerationSeconds)
```

"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system."

### fn spec.capacity.tolerations.withValue

```ts
withValue(value)
```

"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string."

## obj spec.capacity.topologySpreadConstraints

"TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. This field is alpha-level and is only honored by clusters that enables the EvenPodsSpread feature. All topologySpreadConstraints are ANDed."

### fn spec.capacity.topologySpreadConstraints.withMaxSkew

```ts
withMaxSkew(maxSkew)
```

"MaxSkew describes the degree to which pods may be unevenly distributed. It's the maximum permitted difference between the number of matching pods in any two topology domains of a given topology type. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 1/1/0: | zone1 | zone2 | zone3 | |   P   |   P   |       | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 1/1/1; scheduling it onto zone1(zone2) would make the ActualSkew(2-0) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. It's a required field. Default value is 1 and 0 is not allowed."

### fn spec.capacity.topologySpreadConstraints.withTopologyKey

```ts
withTopologyKey(topologyKey)
```

"TopologyKey is the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. We consider each <key, value> as a \"bucket\", and try to put balanced number of pods into each bucket. It's a required field."

### fn spec.capacity.topologySpreadConstraints.withWhenUnsatisfiable

```ts
withWhenUnsatisfiable(whenUnsatisfiable)
```

"WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread constraint. - DoNotSchedule (default) tells the scheduler not to schedule it - ScheduleAnyway tells the scheduler to still schedule it It's considered as \"Unsatisfiable\" if and only if placing incoming pod on any topology violates \"MaxSkew\". For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field."

## obj spec.capacity.topologySpreadConstraints.labelSelector

"LabelSelector is used to find matching pods. Pods that match this label selector are counted to determine the number of pods in their corresponding topology domain."

### fn spec.capacity.topologySpreadConstraints.labelSelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.topologySpreadConstraints.labelSelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.capacity.topologySpreadConstraints.labelSelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

### fn spec.capacity.topologySpreadConstraints.labelSelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

**Note:** This function appends passed data to existing values

## obj spec.capacity.topologySpreadConstraints.labelSelector.matchExpressions

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.capacity.topologySpreadConstraints.labelSelector.matchExpressions.withKey

```ts
withKey(key)
```

"key is the label key that the selector applies to."

### fn spec.capacity.topologySpreadConstraints.labelSelector.matchExpressions.withOperator

```ts
withOperator(operator)
```

"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."

### fn spec.capacity.topologySpreadConstraints.labelSelector.matchExpressions.withValues

```ts
withValues(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

### fn spec.capacity.topologySpreadConstraints.labelSelector.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values

## obj spec.capacity.volumes

"List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes"

### fn spec.capacity.volumes.withName

```ts
withName(name)
```

"Volume's name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"

## obj spec.capacity.volumes.awsElasticBlockStore

"AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"

### fn spec.capacity.volumes.awsElasticBlockStore.withFsType

```ts
withFsType(fsType)
```

"Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore TODO: how do we prevent errors in the filesystem from compromising the machine"

### fn spec.capacity.volumes.awsElasticBlockStore.withPartition

```ts
withPartition(partition)
```

"The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty)."

### fn spec.capacity.volumes.awsElasticBlockStore.withReadOnly

```ts
withReadOnly(readOnly)
```

"Specify \"true\" to force and set the ReadOnly property in VolumeMounts to \"true\". If omitted, the default is \"false\". More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"

### fn spec.capacity.volumes.awsElasticBlockStore.withVolumeID

```ts
withVolumeID(volumeID)
```

"Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"

## obj spec.capacity.volumes.azureDisk

"AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."

### fn spec.capacity.volumes.azureDisk.withCachingMode

```ts
withCachingMode(cachingMode)
```

"Host Caching mode: None, Read Only, Read Write."

### fn spec.capacity.volumes.azureDisk.withDiskName

```ts
withDiskName(diskName)
```

"The Name of the data disk in the blob storage"

### fn spec.capacity.volumes.azureDisk.withDiskURI

```ts
withDiskURI(diskURI)
```

"The URI the data disk in the blob storage"

### fn spec.capacity.volumes.azureDisk.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."

### fn spec.capacity.volumes.azureDisk.withKind

```ts
withKind(kind)
```

"Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared"

### fn spec.capacity.volumes.azureDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

"Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

## obj spec.capacity.volumes.azureFile

"AzureFile represents an Azure File Service mount on the host and bind mount to the pod."

### fn spec.capacity.volumes.azureFile.withReadOnly

```ts
withReadOnly(readOnly)
```

"Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

### fn spec.capacity.volumes.azureFile.withSecretName

```ts
withSecretName(secretName)
```

"the name of secret that contains Azure Storage Account Name and Key"

### fn spec.capacity.volumes.azureFile.withShareName

```ts
withShareName(shareName)
```

"Share Name"

## obj spec.capacity.volumes.cephfs

"CephFS represents a Ceph FS mount on the host that shares a pod's lifetime"

### fn spec.capacity.volumes.cephfs.withMonitors

```ts
withMonitors(monitors)
```

"Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"

### fn spec.capacity.volumes.cephfs.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

"Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.cephfs.withPath

```ts
withPath(path)
```

"Optional: Used as the mounted root, rather than the full Ceph tree, default is /"

### fn spec.capacity.volumes.cephfs.withReadOnly

```ts
withReadOnly(readOnly)
```

"Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"

### fn spec.capacity.volumes.cephfs.withSecretFile

```ts
withSecretFile(secretFile)
```

"Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"

### fn spec.capacity.volumes.cephfs.withUser

```ts
withUser(user)
```

"Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"

## obj spec.capacity.volumes.cephfs.secretRef

"Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"

### fn spec.capacity.volumes.cephfs.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.cinder

"Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"

### fn spec.capacity.volumes.cinder.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"

### fn spec.capacity.volumes.cinder.withReadOnly

```ts
withReadOnly(readOnly)
```

"Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"

### fn spec.capacity.volumes.cinder.withVolumeID

```ts
withVolumeID(volumeID)
```

"volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"

## obj spec.capacity.volumes.cinder.secretRef

"Optional: points to a secret object containing parameters used to connect to OpenStack."

### fn spec.capacity.volumes.cinder.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.configMap

"ConfigMap represents a configMap that should populate this volume"

### fn spec.capacity.volumes.configMap.withDefaultMode

```ts
withDefaultMode(defaultMode)
```

"Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.configMap.withItems

```ts
withItems(items)
```

"If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.configMap.withItemsMixin

```ts
withItemsMixin(items)
```

"If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.configMap.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.volumes.configMap.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap or its keys must be defined"

## obj spec.capacity.volumes.configMap.items

"If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.configMap.items.withKey

```ts
withKey(key)
```

"The key to project."

### fn spec.capacity.volumes.configMap.items.withMode

```ts
withMode(mode)
```

"Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.configMap.items.withPath

```ts
withPath(path)
```

"The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'."

## obj spec.capacity.volumes.csi

"CSI (Container Storage Interface) represents storage that is handled by an external CSI driver (Alpha feature)."

### fn spec.capacity.volumes.csi.withDriver

```ts
withDriver(driver)
```

"Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster."

### fn spec.capacity.volumes.csi.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply."

### fn spec.capacity.volumes.csi.withReadOnly

```ts
withReadOnly(readOnly)
```

"Specifies a read-only configuration for the volume. Defaults to false (read/write)."

### fn spec.capacity.volumes.csi.withVolumeAttributes

```ts
withVolumeAttributes(volumeAttributes)
```

"VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."

### fn spec.capacity.volumes.csi.withVolumeAttributesMixin

```ts
withVolumeAttributesMixin(volumeAttributes)
```

"VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."

**Note:** This function appends passed data to existing values

## obj spec.capacity.volumes.csi.nodePublishSecretRef

"NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed."

### fn spec.capacity.volumes.csi.nodePublishSecretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.downwardAPI

"DownwardAPI represents downward API about the pod that should populate this volume"

### fn spec.capacity.volumes.downwardAPI.withDefaultMode

```ts
withDefaultMode(defaultMode)
```

"Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.downwardAPI.withItems

```ts
withItems(items)
```

"Items is a list of downward API volume file"

### fn spec.capacity.volumes.downwardAPI.withItemsMixin

```ts
withItemsMixin(items)
```

"Items is a list of downward API volume file"

**Note:** This function appends passed data to existing values

## obj spec.capacity.volumes.downwardAPI.items

"Items is a list of downward API volume file"

### fn spec.capacity.volumes.downwardAPI.items.withMode

```ts
withMode(mode)
```

"Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.downwardAPI.items.withPath

```ts
withPath(path)
```

"Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'"

## obj spec.capacity.volumes.downwardAPI.items.fieldRef

"Required: Selects a field of the pod: only annotations, labels, name and namespace are supported."

### fn spec.capacity.volumes.downwardAPI.items.fieldRef.withApiVersion

```ts
withApiVersion(apiVersion)
```

"Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."

### fn spec.capacity.volumes.downwardAPI.items.fieldRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

"Path of the field to select in the specified API version."

## obj spec.capacity.volumes.downwardAPI.items.resourceFieldRef

"Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."

### fn spec.capacity.volumes.downwardAPI.items.resourceFieldRef.withContainerName

```ts
withContainerName(containerName)
```

"Container name: required for volumes, optional for env vars"

### fn spec.capacity.volumes.downwardAPI.items.resourceFieldRef.withDivisor

```ts
withDivisor(divisor)
```

"Specifies the output format of the exposed resources, defaults to \"1\

### fn spec.capacity.volumes.downwardAPI.items.resourceFieldRef.withResource

```ts
withResource(resource)
```

"Required: resource to select"

## obj spec.capacity.volumes.emptyDir

"EmptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"

### fn spec.capacity.volumes.emptyDir.withMedium

```ts
withMedium(medium)
```

"What type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"

### fn spec.capacity.volumes.emptyDir.withSizeLimit

```ts
withSizeLimit(sizeLimit)
```

"Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir"

## obj spec.capacity.volumes.fc

"FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."

### fn spec.capacity.volumes.fc.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. TODO: how do we prevent errors in the filesystem from compromising the machine"

### fn spec.capacity.volumes.fc.withLun

```ts
withLun(lun)
```

"Optional: FC target lun number"

### fn spec.capacity.volumes.fc.withReadOnly

```ts
withReadOnly(readOnly)
```

"Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

### fn spec.capacity.volumes.fc.withTargetWWNs

```ts
withTargetWWNs(targetWWNs)
```

"Optional: FC target worldwide names (WWNs)"

### fn spec.capacity.volumes.fc.withTargetWWNsMixin

```ts
withTargetWWNsMixin(targetWWNs)
```

"Optional: FC target worldwide names (WWNs)"

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.fc.withWwids

```ts
withWwids(wwids)
```

"Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."

### fn spec.capacity.volumes.fc.withWwidsMixin

```ts
withWwidsMixin(wwids)
```

"Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."

**Note:** This function appends passed data to existing values

## obj spec.capacity.volumes.flexVolume

"FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin."

### fn spec.capacity.volumes.flexVolume.withDriver

```ts
withDriver(driver)
```

"Driver is the name of the driver to use for this volume."

### fn spec.capacity.volumes.flexVolume.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."

### fn spec.capacity.volumes.flexVolume.withOptions

```ts
withOptions(options)
```

"Optional: Extra command options if any."

### fn spec.capacity.volumes.flexVolume.withOptionsMixin

```ts
withOptionsMixin(options)
```

"Optional: Extra command options if any."

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.flexVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

"Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

## obj spec.capacity.volumes.flexVolume.secretRef

"Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."

### fn spec.capacity.volumes.flexVolume.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.flocker

"Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running"

### fn spec.capacity.volumes.flocker.withDatasetName

```ts
withDatasetName(datasetName)
```

"Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"

### fn spec.capacity.volumes.flocker.withDatasetUUID

```ts
withDatasetUUID(datasetUUID)
```

"UUID of the dataset. This is unique identifier of a Flocker dataset"

## obj spec.capacity.volumes.gcePersistentDisk

"GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"

### fn spec.capacity.volumes.gcePersistentDisk.withFsType

```ts
withFsType(fsType)
```

"Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk TODO: how do we prevent errors in the filesystem from compromising the machine"

### fn spec.capacity.volumes.gcePersistentDisk.withPartition

```ts
withPartition(partition)
```

"The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"

### fn spec.capacity.volumes.gcePersistentDisk.withPdName

```ts
withPdName(pdName)
```

"Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"

### fn spec.capacity.volumes.gcePersistentDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

"ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"

## obj spec.capacity.volumes.gitRepo

"GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."

### fn spec.capacity.volumes.gitRepo.withDirectory

```ts
withDirectory(directory)
```

"Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."

### fn spec.capacity.volumes.gitRepo.withRepository

```ts
withRepository(repository)
```

"Repository URL"

### fn spec.capacity.volumes.gitRepo.withRevision

```ts
withRevision(revision)
```

"Commit hash for the specified revision."

## obj spec.capacity.volumes.glusterfs

"Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/glusterfs/README.md"

### fn spec.capacity.volumes.glusterfs.withEndpoints

```ts
withEndpoints(endpoints)
```

"EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"

### fn spec.capacity.volumes.glusterfs.withPath

```ts
withPath(path)
```

"Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"

### fn spec.capacity.volumes.glusterfs.withReadOnly

```ts
withReadOnly(readOnly)
```

"ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"

## obj spec.capacity.volumes.hostPath

"HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath --- TODO(jonesdl) We need to restrict who can use host directory mounts and who can/can not mount host directories as read/write."

### fn spec.capacity.volumes.hostPath.withPath

```ts
withPath(path)
```

"Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"

### fn spec.capacity.volumes.hostPath.withType

```ts
withType(type)
```

"Type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"

## obj spec.capacity.volumes.iscsi

"ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md"

### fn spec.capacity.volumes.iscsi.withChapAuthDiscovery

```ts
withChapAuthDiscovery(chapAuthDiscovery)
```

"whether support iSCSI Discovery CHAP authentication"

### fn spec.capacity.volumes.iscsi.withChapAuthSession

```ts
withChapAuthSession(chapAuthSession)
```

"whether support iSCSI Session CHAP authentication"

### fn spec.capacity.volumes.iscsi.withFsType

```ts
withFsType(fsType)
```

"Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi TODO: how do we prevent errors in the filesystem from compromising the machine"

### fn spec.capacity.volumes.iscsi.withInitiatorName

```ts
withInitiatorName(initiatorName)
```

"Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."

### fn spec.capacity.volumes.iscsi.withIqn

```ts
withIqn(iqn)
```

"Target iSCSI Qualified Name."

### fn spec.capacity.volumes.iscsi.withIscsiInterface

```ts
withIscsiInterface(iscsiInterface)
```

"iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."

### fn spec.capacity.volumes.iscsi.withLun

```ts
withLun(lun)
```

"iSCSI Target Lun number."

### fn spec.capacity.volumes.iscsi.withPortals

```ts
withPortals(portals)
```

"iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."

### fn spec.capacity.volumes.iscsi.withPortalsMixin

```ts
withPortalsMixin(portals)
```

"iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.iscsi.withReadOnly

```ts
withReadOnly(readOnly)
```

"ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."

### fn spec.capacity.volumes.iscsi.withTargetPortal

```ts
withTargetPortal(targetPortal)
```

"iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."

## obj spec.capacity.volumes.iscsi.secretRef

"CHAP Secret for iSCSI target and initiator authentication"

### fn spec.capacity.volumes.iscsi.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.nfs

"NFS represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"

### fn spec.capacity.volumes.nfs.withPath

```ts
withPath(path)
```

"Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"

### fn spec.capacity.volumes.nfs.withReadOnly

```ts
withReadOnly(readOnly)
```

"ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"

### fn spec.capacity.volumes.nfs.withServer

```ts
withServer(server)
```

"Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"

## obj spec.capacity.volumes.persistentVolumeClaim

"PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"

### fn spec.capacity.volumes.persistentVolumeClaim.withClaimName

```ts
withClaimName(claimName)
```

"ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"

### fn spec.capacity.volumes.persistentVolumeClaim.withReadOnly

```ts
withReadOnly(readOnly)
```

"Will force the ReadOnly setting in VolumeMounts. Default false."

## obj spec.capacity.volumes.photonPersistentDisk

"PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"

### fn spec.capacity.volumes.photonPersistentDisk.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."

### fn spec.capacity.volumes.photonPersistentDisk.withPdID

```ts
withPdID(pdID)
```

"ID that identifies Photon Controller persistent disk"

## obj spec.capacity.volumes.portworxVolume

"PortworxVolume represents a portworx volume attached and mounted on kubelets host machine"

### fn spec.capacity.volumes.portworxVolume.withFsType

```ts
withFsType(fsType)
```

"FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified."

### fn spec.capacity.volumes.portworxVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

"Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

### fn spec.capacity.volumes.portworxVolume.withVolumeID

```ts
withVolumeID(volumeID)
```

"VolumeID uniquely identifies a Portworx volume"

## obj spec.capacity.volumes.projected

"Items for all in one resources secrets, configmaps, and downward API"

### fn spec.capacity.volumes.projected.withDefaultMode

```ts
withDefaultMode(defaultMode)
```

"Mode bits to use on created files by default. Must be a value between 0 and 0777. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.projected.withSources

```ts
withSources(sources)
```

"list of volume projections"

### fn spec.capacity.volumes.projected.withSourcesMixin

```ts
withSourcesMixin(sources)
```

"list of volume projections"

**Note:** This function appends passed data to existing values

## obj spec.capacity.volumes.projected.sources

"list of volume projections"

## obj spec.capacity.volumes.projected.sources.configMap

"information about the configMap data to project"

### fn spec.capacity.volumes.projected.sources.configMap.withItems

```ts
withItems(items)
```

"If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.projected.sources.configMap.withItemsMixin

```ts
withItemsMixin(items)
```

"If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.projected.sources.configMap.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.volumes.projected.sources.configMap.withOptional

```ts
withOptional(optional)
```

"Specify whether the ConfigMap or its keys must be defined"

## obj spec.capacity.volumes.projected.sources.configMap.items

"If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.projected.sources.configMap.items.withKey

```ts
withKey(key)
```

"The key to project."

### fn spec.capacity.volumes.projected.sources.configMap.items.withMode

```ts
withMode(mode)
```

"Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.projected.sources.configMap.items.withPath

```ts
withPath(path)
```

"The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'."

## obj spec.capacity.volumes.projected.sources.downwardAPI

"information about the downwardAPI data to project"

### fn spec.capacity.volumes.projected.sources.downwardAPI.withItems

```ts
withItems(items)
```

"Items is a list of DownwardAPIVolume file"

### fn spec.capacity.volumes.projected.sources.downwardAPI.withItemsMixin

```ts
withItemsMixin(items)
```

"Items is a list of DownwardAPIVolume file"

**Note:** This function appends passed data to existing values

## obj spec.capacity.volumes.projected.sources.downwardAPI.items

"Items is a list of DownwardAPIVolume file"

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.withMode

```ts
withMode(mode)
```

"Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.withPath

```ts
withPath(path)
```

"Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'"

## obj spec.capacity.volumes.projected.sources.downwardAPI.items.fieldRef

"Required: Selects a field of the pod: only annotations, labels, name and namespace are supported."

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.fieldRef.withApiVersion

```ts
withApiVersion(apiVersion)
```

"Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.fieldRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

"Path of the field to select in the specified API version."

## obj spec.capacity.volumes.projected.sources.downwardAPI.items.resourceFieldRef

"Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.resourceFieldRef.withContainerName

```ts
withContainerName(containerName)
```

"Container name: required for volumes, optional for env vars"

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.resourceFieldRef.withDivisor

```ts
withDivisor(divisor)
```

"Specifies the output format of the exposed resources, defaults to \"1\

### fn spec.capacity.volumes.projected.sources.downwardAPI.items.resourceFieldRef.withResource

```ts
withResource(resource)
```

"Required: resource to select"

## obj spec.capacity.volumes.projected.sources.secret

"information about the secret data to project"

### fn spec.capacity.volumes.projected.sources.secret.withItems

```ts
withItems(items)
```

"If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.projected.sources.secret.withItemsMixin

```ts
withItemsMixin(items)
```

"If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.projected.sources.secret.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

### fn spec.capacity.volumes.projected.sources.secret.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret or its key must be defined"

## obj spec.capacity.volumes.projected.sources.secret.items

"If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.projected.sources.secret.items.withKey

```ts
withKey(key)
```

"The key to project."

### fn spec.capacity.volumes.projected.sources.secret.items.withMode

```ts
withMode(mode)
```

"Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.projected.sources.secret.items.withPath

```ts
withPath(path)
```

"The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'."

## obj spec.capacity.volumes.projected.sources.serviceAccountToken

"information about the serviceAccountToken data to project"

### fn spec.capacity.volumes.projected.sources.serviceAccountToken.withAudience

```ts
withAudience(audience)
```

"Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."

### fn spec.capacity.volumes.projected.sources.serviceAccountToken.withExpirationSeconds

```ts
withExpirationSeconds(expirationSeconds)
```

"ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."

### fn spec.capacity.volumes.projected.sources.serviceAccountToken.withPath

```ts
withPath(path)
```

"Path is the path relative to the mount point of the file to project the token into."

## obj spec.capacity.volumes.quobyte

"Quobyte represents a Quobyte mount on the host that shares a pod's lifetime"

### fn spec.capacity.volumes.quobyte.withGroup

```ts
withGroup(group)
```

"Group to map volume access to Default is no group"

### fn spec.capacity.volumes.quobyte.withReadOnly

```ts
withReadOnly(readOnly)
```

"ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false."

### fn spec.capacity.volumes.quobyte.withRegistry

```ts
withRegistry(registry)
```

"Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes"

### fn spec.capacity.volumes.quobyte.withTenant

```ts
withTenant(tenant)
```

"Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin"

### fn spec.capacity.volumes.quobyte.withUser

```ts
withUser(user)
```

"User to map volume access to Defaults to serivceaccount user"

### fn spec.capacity.volumes.quobyte.withVolume

```ts
withVolume(volume)
```

"Volume is a string that references an already created Quobyte volume by name."

## obj spec.capacity.volumes.rbd

"RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md"

### fn spec.capacity.volumes.rbd.withFsType

```ts
withFsType(fsType)
```

"Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd TODO: how do we prevent errors in the filesystem from compromising the machine"

### fn spec.capacity.volumes.rbd.withImage

```ts
withImage(image)
```

"The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

### fn spec.capacity.volumes.rbd.withKeyring

```ts
withKeyring(keyring)
```

"Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

### fn spec.capacity.volumes.rbd.withMonitors

```ts
withMonitors(monitors)
```

"A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

### fn spec.capacity.volumes.rbd.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

"A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.rbd.withPool

```ts
withPool(pool)
```

"The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

### fn spec.capacity.volumes.rbd.withReadOnly

```ts
withReadOnly(readOnly)
```

"ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

### fn spec.capacity.volumes.rbd.withUser

```ts
withUser(user)
```

"The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

## obj spec.capacity.volumes.rbd.secretRef

"SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"

### fn spec.capacity.volumes.rbd.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.scaleIO

"ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."

### fn spec.capacity.volumes.scaleIO.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"."

### fn spec.capacity.volumes.scaleIO.withGateway

```ts
withGateway(gateway)
```

"The host address of the ScaleIO API Gateway."

### fn spec.capacity.volumes.scaleIO.withProtectionDomain

```ts
withProtectionDomain(protectionDomain)
```

"The name of the ScaleIO Protection Domain for the configured storage."

### fn spec.capacity.volumes.scaleIO.withReadOnly

```ts
withReadOnly(readOnly)
```

"Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

### fn spec.capacity.volumes.scaleIO.withSslEnabled

```ts
withSslEnabled(sslEnabled)
```

"Flag to enable/disable SSL communication with Gateway, default false"

### fn spec.capacity.volumes.scaleIO.withStorageMode

```ts
withStorageMode(storageMode)
```

"Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."

### fn spec.capacity.volumes.scaleIO.withStoragePool

```ts
withStoragePool(storagePool)
```

"The ScaleIO Storage Pool associated with the protection domain."

### fn spec.capacity.volumes.scaleIO.withSystem

```ts
withSystem(system)
```

"The name of the storage system as configured in ScaleIO."

### fn spec.capacity.volumes.scaleIO.withVolumeName

```ts
withVolumeName(volumeName)
```

"The name of a volume already created in the ScaleIO system that is associated with this volume source."

## obj spec.capacity.volumes.scaleIO.secretRef

"SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail."

### fn spec.capacity.volumes.scaleIO.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.secret

"Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"

### fn spec.capacity.volumes.secret.withDefaultMode

```ts
withDefaultMode(defaultMode)
```

"Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.secret.withItems

```ts
withItems(items)
```

"If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.secret.withItemsMixin

```ts
withItemsMixin(items)
```

"If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

**Note:** This function appends passed data to existing values

### fn spec.capacity.volumes.secret.withOptional

```ts
withOptional(optional)
```

"Specify whether the Secret or its keys must be defined"

### fn spec.capacity.volumes.secret.withSecretName

```ts
withSecretName(secretName)
```

"Name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"

## obj spec.capacity.volumes.secret.items

"If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."

### fn spec.capacity.volumes.secret.items.withKey

```ts
withKey(key)
```

"The key to project."

### fn spec.capacity.volumes.secret.items.withMode

```ts
withMode(mode)
```

"Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."

### fn spec.capacity.volumes.secret.items.withPath

```ts
withPath(path)
```

"The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'."

## obj spec.capacity.volumes.storageos

"StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes."

### fn spec.capacity.volumes.storageos.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."

### fn spec.capacity.volumes.storageos.withReadOnly

```ts
withReadOnly(readOnly)
```

"Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."

### fn spec.capacity.volumes.storageos.withVolumeName

```ts
withVolumeName(volumeName)
```

"VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace."

### fn spec.capacity.volumes.storageos.withVolumeNamespace

```ts
withVolumeNamespace(volumeNamespace)
```

"VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created."

## obj spec.capacity.volumes.storageos.secretRef

"SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted."

### fn spec.capacity.volumes.storageos.secretRef.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.capacity.volumes.vsphereVolume

"VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"

### fn spec.capacity.volumes.vsphereVolume.withFsType

```ts
withFsType(fsType)
```

"Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."

### fn spec.capacity.volumes.vsphereVolume.withStoragePolicyID

```ts
withStoragePolicyID(storagePolicyID)
```

"Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName."

### fn spec.capacity.volumes.vsphereVolume.withStoragePolicyName

```ts
withStoragePolicyName(storagePolicyName)
```

"Storage Policy Based Management (SPBM) profile name."

### fn spec.capacity.volumes.vsphereVolume.withVolumePath

```ts
withVolumePath(volumePath)
```

"Path that identifies vSphere volume vmdk"

## obj spec.provisionPolicy

"ProvisionPolicy describes how to provision the additional capacity."

### fn spec.provisionPolicy.withPodsToReplace

```ts
withPodsToReplace(podsToReplace)
```

"PodsToReplace is a list of pods that can be excluded from simulation when reserving additional capacity. The semantics is that the pod for which this capacity request reserves capacity will replace the pods in this list."

### fn spec.provisionPolicy.withPodsToReplaceMixin

```ts
withPodsToReplaceMixin(podsToReplace)
```

"PodsToReplace is a list of pods that can be excluded from simulation when reserving additional capacity. The semantics is that the pod for which this capacity request reserves capacity will replace the pods in this list."

**Note:** This function appends passed data to existing values

## obj spec.provisionPolicy.podsToReplace

"PodsToReplace is a list of pods that can be excluded from simulation when reserving additional capacity. The semantics is that the pod for which this capacity request reserves capacity will replace the pods in this list."

### fn spec.provisionPolicy.podsToReplace.withName

```ts
withName(name)
```

"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"

## obj spec.provisionedCapacitySelector

"ProvisionedCapacitySelector identifies pods that this Capacity Request is related to by. This signifies that creation of a pod matching ProvisionedCapacitySelector may mean that this Capacity Request is no longer needed. Note that this field is ignored by Cluster Autoscaler and it is the responsibility of the client to delete the Capacity Request when it becomes obsolete. If the client consumes the capacity without deleting the request, the Cluster Autoscaler will attempt to fulfill the request again."

### fn spec.provisionedCapacitySelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.provisionedCapacitySelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

**Note:** This function appends passed data to existing values

### fn spec.provisionedCapacitySelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

### fn spec.provisionedCapacitySelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."

**Note:** This function appends passed data to existing values

## obj spec.provisionedCapacitySelector.matchExpressions

"matchExpressions is a list of label selector requirements. The requirements are ANDed."

### fn spec.provisionedCapacitySelector.matchExpressions.withKey

```ts
withKey(key)
```

"key is the label key that the selector applies to."

### fn spec.provisionedCapacitySelector.matchExpressions.withOperator

```ts
withOperator(operator)
```

"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."

### fn spec.provisionedCapacitySelector.matchExpressions.withValues

```ts
withValues(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

### fn spec.provisionedCapacitySelector.matchExpressions.withValuesMixin

```ts
withValuesMixin(values)
```

"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."

**Note:** This function appends passed data to existing values