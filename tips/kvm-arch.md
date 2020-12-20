# How to install Kvm and virt-manager on Arch
- First install the following packages:

```
sudo pacman -S virt-manager qemu qemu-arch-extra ovmf vde2 ebtables dnsmasq bridge-utils openbsd-netcat
```

Now we enable and start libvrtd
``` 
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
```
- Now we need to create the bridge interface

```sudo nano br10.xml```

file br10.xml

```
<network>
  <name>br10</name>
  <forward mode='nat'>
    <nat>
      <port start='1024' end='65535'/>
    </nat>
  </forward>
  <bridge name='br10' stp='on' delay='0'/>
  <ip address='192.168.30.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.30.50' end='192.168.30.200'/>
    </dhcp>
  </ip>
</network>
```
- Then 

```
sudo virsh net-define br10.xml  # define the bridge
sudo virsh net-start br10       # start the bridge
sudo virsh net-autostart br10   # start the bridge at boot time
```

- Before launching virt-manager for dmenu
sudo usermod --append --groups libvirt `whoami`  # This will add your user to the group

### Configuration
- Enable boot option, choose UEFI (not sec boot)
- Network, choose the bridge we created
- Enable CD-rom amd put it on top
- Video, choose virtio and enable acceleration
