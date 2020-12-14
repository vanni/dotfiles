Screen tearing and browser acceleration
https://wiki.archlinux.org/index.php/intel_graphics#Tearing

Disable Vertical Synchronization (VSYNC) Useful when:

Chomium/Chrome has lags and slow performance due to GPU and runs smoothly with --disable-gpu switch glxgears test does not show desired performance The intel-driver uses Triple Buffering for vertical synchronization; this allows for full performance and avoids tearing. To turn vertical synchronization off (e.g. for benchmarking) use this .drirc in your home directory:

~/.drirc
<device screen="0" driver="dri2">
	<application name="Default">
		<option name="vblank_mode" value="0"/>
	</application>
</device>
