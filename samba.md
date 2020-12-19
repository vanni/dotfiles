### Automount a samba share in your linux system

Adde the following in your **/etc/fstab**

```
# Synology smb share

//192.168.99.5/syn-share	/mnt/synol	cifs	credentials=/home/vanni/.smbcredentials,iocharset=utf8,file_mode=0777,dir_mode=0777 0 0
```
To pass the credential create a file in your home dir for example :
**~/.smbcredentials**
add the following two lines (change user name and password accordingly)

**~/.smbcredentails**
```
username= <myusername>
password= <mypassword>
```
Those credentials are for the smb user on the server.