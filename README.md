Custom watchface for [Amazfit Bip](https://en.amazfit.com/bip.html) smartwatches.

# Shots

![](watchface/gelin-2021_packed_static.png)
![](watchface/gelin-2021_packed_animated_0.png) 
![](watchface/gelin-2021_packed_animated_1.png) 
![](watchface/gelin-2021_packed_animated_2.png)
![](watchface/gelin-2021_packed_animated_3.png)
![](watchface/gelin-2021_packed_animated_4.png)
![](watchface/gelin-2021_packed_animated_5.png)
![](watchface/gelin-2021_packed_animated_6.png)
![](watchface/gelin-2021_packed_animated_7.png)
![](watchface/gelin-2021_packed_animated_8.png)
![](watchface/gelin-2021_packed_animated_9.png)

# Installation

## Android

### With Mi Fit

* You need [Mi Fit](https://play.google.com/store/apps/details?id=com.xiaomi.hm.health) app installed.
* Download [archive]().
* Unpack the archive and put two files from it (`.bin` and `.png`) to your phone.
* Using a file manager create a new folder (with any name) under `Android/data/com.xiaomi.hm.health/files/watch_skin_local/` on a volume where Mi Fit is installed.
* Copy the files from archive to the new folder.
* Open Mi Fit, navigate to Profile→Devices→Amazfit Bip→Theme settings→Local watchfaces
* Find out the image of the new watchface, click and install it.

### With Amazfit Tools

* Tou need [Amazfit Tools](https://play.google.com/store/apps/details?id=cz.zdenekhorak.amazfittools) app installed.
* Download [archive]().
* Unpack the archive and put two files from it (`.bin` and `.png`) to your phone.
* Open Amazfit Tools, navigate to Watch Faces→Settings (tab with gear icon)→Install Custom (Upload and install your watch face file).
* Find out and choose the downloaded and unpacked `.bin` file.
* Click on in and install the `.bin` file.

# Build

## With Ubuntu

* You need [AmazfitBipTools](https://bitbucket.org/valeronm/amazfitbiptools/) and Wine.
* [Download](https://bitbucket.org/valeronm/amazfitbiptools/downloads/) AmazfilBitTools archive and unpack it to `~/opt/AmazfitBipTools`.
* Install Wine.
* [Install](https://askubuntu.com/a/992215/123682) Mono for Wine.
* Run `make`. Instruct `Makefile` for more details.

See also the [online watchface editor](https://v1ack.github.io/watchfaceEditor/).
