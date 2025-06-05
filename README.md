# plymouth-themes
Plymouth themes that I modified for personal use

## Requirements

Download the following packages
```
plymouth
```

## Setup

+ Clone the repo
+ Copy the theme to plymouth folder

```
sudo cp -r <theme name> /usr/share/plymouth/themes
```
+ (Optional) Check if the theme is copied correctly

```
sudo plymouth-set-default-theme -l <theme name>
```

+ Configure the system to run Plymouth

In `/etc/default/grub` add parameters `quiet` as well as `splash`
In `/etc/mkinitcpio` add `plymouth` right after `base udev` in HOOKS=() and the video card driver in `MODULES=()`.
For example, for Intel cards, add `MODULES=(i915)`

  
+ Set the theme 

```
sudo plymouth-set-default-theme -R <theme name>
```

## Credits
https://github.com/1BB3/watch-dogs/tree/master
