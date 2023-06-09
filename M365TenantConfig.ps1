# Generated with Microsoft365DSC version 1.23.322.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
)

Configuration M365TenantConfig
{
    param (
    )

    $OrganizationName = $ConfigurationData.NonNodeData.OrganizationName

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.23.322.1'

    Node localhost
    {
        EXOAcceptedDomain a4a0e527-712c-4198-8b1f-741634b37480
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DomainType            = "Authoritative";
            Ensure                = "Present";
            Identity              = "$OrganizationName";
            MatchSubDomains       = $False;
            OutboundOnly          = $False;
            TenantId              = $ConfigurationData.NonNodeData.TenantId;
        }
        EXOAcceptedDomain 710e9579-76a3-43e4-9658-b73f3b7c330e
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DomainType            = "Authoritative";
            Ensure                = "Present";
            Identity              = "gnmlab.xyz";
            MatchSubDomains       = $False;
            OutboundOnly          = $False;
            TenantId              = $ConfigurationData.NonNodeData.TenantId;
        }
        EXOAcceptedDomain 07a88988-050c-4df2-ad92-31f2552b90c2
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            DomainType            = "Authoritative";
            Ensure                = "Present";
            Identity              = "M365x43174659.mail.onmicrosoft.com";
            MatchSubDomains       = $False;
            OutboundOnly          = $False;
            TenantId              = $ConfigurationData.NonNodeData.TenantId;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
