<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureCloudServiceStepByStep" generation="1" functional="0" release="0" Id="8102e1a9-6e56-4464-b63a-88bb424bf067" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudServiceStepByStepGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="AzureStepByStepWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/LB:AzureStepByStepWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.ServiceBus.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.ServiceBus.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueueInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueueInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:AzureStepByStepWebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleInstances" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.ServiceBus.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.ServiceBus.ConnectionString" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueueInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueueInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="AzureStepByStepWebRole" generation="1" functional="0" release="0" software="D:\Demos\AzureStepByStep\AzureCloudServiceStepByStep\csx\Debug\roles\AzureStepByStepWebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;AzureStepByStepWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureStepByStepWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;SnapshotWorkerRoleWithSBQueue&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="SnapshotWorkerRoleWithSBQueue" generation="1" functional="0" release="0" software="D:\Demos\AzureStepByStep\AzureCloudServiceStepByStep\csx\Debug\roles\SnapshotWorkerRoleWithSBQueue" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.ServiceBus.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;SnapshotWorkerRoleWithSBQueue&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureStepByStepWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;SnapshotWorkerRoleWithSBQueue&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueueInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueueUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueueFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="AzureStepByStepWebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="SnapshotWorkerRoleWithSBQueueUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="AzureStepByStepWebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="SnapshotWorkerRoleWithSBQueueFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="AzureStepByStepWebRoleInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="SnapshotWorkerRoleWithSBQueueInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="10f84861-ee7b-48cd-accf-8b6dde083d56" ref="Microsoft.RedDog.Contract\ServiceContract\AzureCloudServiceStepByStepContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="562b784c-a58e-46e2-85a3-e56ecf8b63a3" ref="Microsoft.RedDog.Contract\Interface\AzureStepByStepWebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>