$vm0 = Get-AzVM -ResourceGroupName myResourceGroup -Name vm0
$vm1 = Get-AzVM -ResourceGroupName myResourceGroup -Name vm1

$vm0PrivateIP = (Get-AzNetworkInterface -ResourceGroupName myResourceGroup -Name $vm0.NetworkProfile.NetworkInterfaces.Id.Split('/')[-1]).IpConfigurations.PrivateIpAddress
$vm1PrivateIP = (Get-AzNetworkInterface -ResourceGroupName myResourceGroup -Name $vm1.NetworkProfile.NetworkInterfaces.Id.Split('/')[-1]).IpConfigurations.PrivateIpAddress