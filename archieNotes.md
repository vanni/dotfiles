# This are some notes for installing and configuring Arch Linux

### Create swapfile with dd

```  
dd if=/dev/zero of=/swapfile bs=1M count=512 status=progress 
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
```
Then open **/etc/fstab** and add the line

``` /swapfile none swap defaults 0 0  ```

### Copy and paste form a file to web or something else

``` cat filename | xsel -B ``` - This will load the file in memory and you then can paste it

### Useful websites for colour configuration

- **HEX colour** https://www.color-hex.com/color-palettes
- **Transparency**  https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4	


### Fonts Installation & Themes

``` sudo pacman -S ttf-fonts-awesome ttf-ubuntu-font-family ttf-droid xorg-fonts-misc materia-gtk-theme papirus-icon-theme ```

``` yay -S siji-git ttf-unifont ```

## Applications

### Pacman
```
sudo pacman -S picom nitrogen lxappearance thunar arandr pacman-contrib pulseaudio pulseaudio-alsa pulseaudio-equalizer alsa-utils playerctl bspwm sxhkd pavucontrol sel feh bc freerdp remmina code 
```


### Yay

- AUR installation first
``` 
git clone https://aur.archlinux.org/yay.git 
cd yay 
makepg -si
``` 
```
yay -S spotify

yay -S polybar

yay -S betterlockscreen

yay -S xdpyinfo

```
### A betterlockscreen

- Download an image then issue the following commands for a dim blur effect

``` betterlockscreen -u Pictures/fuji.jpg -b 1.0```

- Add keybinding to: **.config/sxhkd/sxhkdrc**

super + x
	betterlockscreen -l dimblur

