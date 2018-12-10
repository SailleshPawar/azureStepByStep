<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureCloudServiceStepByStep" generation="1" functional="0" release="0" Id="841e7f22-e98b-41c4-9c8b-0f8b6e9e6735" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudServiceStepByStepGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="AzureStepByStepWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/LB:AzureStepByStepWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/LB:SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="AzureStepByStepWebRole:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="AzureStepByStepWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapAzureStepByStepWebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="Certificate|AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapCertificate|AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapCertificate|SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:APPINSIGHTS_INSTRUMENTATIONKEY" />
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
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
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
        <lBChannel name="LB:SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="SW:SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapAzureStepByStepWebRole:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapAzureStepByStepWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleInstances" />
          </setting>
        </map>
        <map name="MapCertificate|AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCertificate|SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/APPINSIGHTS_INSTRUMENTATIONKEY" />
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
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapSnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
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
          <role name="AzureStepByStepWebRole" generation="1" functional="0" release="0" software="D:\Demos\AzureStepByStep\AzureCloudServiceStepByStep\csx\Release\roles\AzureStepByStepWebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SW:AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SW:SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;AzureStepByStepWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureStepByStepWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;SnapshotWorkerRoleWithSBQueue&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="SnapshotWorkerRoleWithSBQueue" generation="1" functional="0" release="0" software="D:\Demos\AzureStepByStep\AzureCloudServiceStepByStep\csx\Release\roles\SnapshotWorkerRoleWithSBQueue" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SW:AzureStepByStepWebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SW:SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.ServiceBus.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;SnapshotWorkerRoleWithSBQueue&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureStepByStepWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;SnapshotWorkerRoleWithSBQueue&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
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
    <implementation Id="0715493a-a3c5-41b7-87ce-2f219a3c1528" ref="Microsoft.RedDog.Contract\ServiceContract\AzureCloudServiceStepByStepContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="264d5e36-7725-42e4-8c12-9bb7aff323c9" ref="Microsoft.RedDog.Contract\Interface\AzureStepByStepWebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/AzureStepByStepWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="019a1229-2436-4b51-8ea1-9d8e63ff1f2b" ref="Microsoft.RedDog.Contract\Interface\SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureCloudServiceStepByStep/AzureCloudServiceStepByStepGroup/SnapshotWorkerRoleWithSBQueue:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>