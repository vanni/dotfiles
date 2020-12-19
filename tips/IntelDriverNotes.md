# Intel i915 video chipset notes

### Source: https://www.youtube.com/watch?v=zEhAJMQYSws

### Install the following packages:

```
sudo pacman -S mesa vulkan-intel vulkan-icd-loader intel-compute-runtime
```
### Create the following files:

-    /etc/X11/xorg.conf.d/20-modesetting.conf
-    /etc/X11/xorg.conf.d/modesetting.conf
-    /etc/x11/xorg.conf.d/20-intel.conf
-    /etc/modprobe.d/i915.conf

### /etc/X11/xorg.conf.d/20-modesetting.conf

```
Section "Device"
  Identifier	"Intel Graphics"
  Driver	"modesetting"
  Option	"AccelMethod"	"glamor"
  Option	"DRI"		"3"		  		 
  #Option	"TearFree" 	"true"
EndSection
```
### /etc/X11/xorg.conf.d/modesetting.conf

```
Section "Device"
  Identifier	"modesetting"
  Driver	"modesetting"
EndSection
```
### /etc/x11/xorg.conf.d/20-intel.conf

```
Section "Device"
	Identifier "Intel Graphics"
    	Driver "intel"
     	# Option	
     	# Option "TearFree" "true"
EndSection
```
### /etc/modprobe.d/i915.conf

```
option i915 enable_guc=2 enable_fbc=1 fastboot=1
```
## Screen tearing and browser acceleration

### Source: https://wiki.archlinux.org/index.php/intel_graphics#Tearing

~/.dric

```
<device screen="0" driver="dri2">
	<application name="Default">
		<option name="vblank_mode" value="0"/>
	</application>
</device>
```

