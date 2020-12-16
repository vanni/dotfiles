Splitting a monitor in 3 virtual monitors
My external monitor is widescreen, which is 3840 pixels wide. However I have used xrandr to split it up horizontally in to three virtual monitors each 1280 wide (by default). So think of three physical monitors but on one screen.

Each third of my monitor can have any number of Workspaces, just as if you had three separate physical monitors.

Of course from time to time I may want a wider central display area. So I wrote a simple bash script that does all the calculations for me. This script can be triggered through a custom dmenu entry, to reconfigure the central monitor to be wider (at expense of other two). Mod1 + F7 -> Scale -> Pick size

If you execute just xrandr on its own you get the name and size of your physical monitors - mine is HDMI-2 @ 3840x1080. If you want to split this to be three separate ones, then do something like;

xrandr --setmonitor HDMI-2\~1 1280/254x1080/286+0+0 HDMI-2  
xrandr --setmonitor HDMI-2\~2 1280/254x1080/286+1280+0 none  
xrandr --setmonitor HDMI-2\~3 1280/255x1080/286+2560+0 none
If you google "xrandr --setmonitor", there are some good guides (better than I can explain)

Here is the full script that is run from dmenu (mentioned above), when I want a wider central display: https://pastebin.com/LJXct0ZH
