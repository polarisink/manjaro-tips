Used for Manjaro Gnome.



<!--more-->

# update system

## update pamac

```shell
sudo pamac update
```

## change china mirror

```shell
sudo pacman-mirrors -i -c China -m rank

# if use arch mirror,add this to /etc/pacman.conf
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch

sudo pacman -S archlinuxcn-keyring
```
## necessary for build

```shell
sudo pacman -S base-devel
```

## if can not open terminal

```shell
# first,edit /etc/locale.gen
sudo locale-gen
```

## yay

```shell
sudo pacman -S yay
```

# common softwares

## snap

```shell
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install snap-store
```

## tim & wechat

```shell
yay -S com.qq.tim.spark
yay -S com.qq.wechat.spark
# adjust dpi

cd ${home}
env WINEPREFIX="$HOME/.deepinwine/Spark-WeChat" deepin-wine5 winecfg
env WINEPREFIX="$HOME/.deepinwine/Spark-TIM" deepin-wine5 winecfg

# install fonts
sudo pacman -S wqy-microhei wqy-bitmapfont wqy-zenhei wqy-microhei-lite ttf-dejavu noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk

# refresh font cache
fc-cache -fv

#if wechat has error codes,download msyh.ttf to ~/.deepinwine/Spark-WeChat/drive_c/windows/Fonts
```



## wps

```
yay -S wps-office
```

## netease-cloud-music

```shell
yay -S netease-cloud-music
```

## typora

```shell
yay -S typora
```

## nutstore

```shell
yay -S nutstore
```

## chrome

```text
sudo pacman -S google-chrome
```

## goldendict

```text
yay -S goldendict
```

## baidunetdisk

```text
yay -S baidunetdisk-bin 
```

## xunlei

```text
yay -S xunlei-bin
```

## you-get

```text
yay -S you-get
```

## the fuck

```text
sudo pacman -S thefuck
```

## tmux

```text
sudo pacman -S tmux
```

## lolcat

```text
yay -S lolcat
```

# develop

## jetbrains

```shell
# the app store has CC edtion,this is for utlimate
wget https://download.jetbrains.com.cn/idea/ideaIU-2021.1.3.tar.gz
wget https://download.jetbrains.com.cn/datagrip/datagrip-2021.1.3.tar.gz
wget https://download.jetbrains.com.cn/webstorm/WebStorm-2021.1.3.tar.gz
tar -zxvf ideaIU-2021.1.3.tar.gz -C /opt
tar -zxvf datagrip-2021.1.3.tar.gz -C /opt
tar -zxvf WebStorm-2021.1.3.tar.gz -C /opt
cd /opt
mv ideaIU-2021.1.3 idea
mv datagrip-2021.1.3 datagrip
mv WebStorm-2021.1.3 webstorm

echo "[Desktop Entry]                                                                    
Name=Intellij Idea
GenericName=Java IDE
Exec=/opt/idea/bin/idea.sh
Icon=/opt/idea/bin/idea.svg
Type=Application
StartupNotify=true" >> /usr/share/applications/idea.desktop

echo "[Desktop Entry]                                                                    
Name=WebStorm
GenericName=Front IDE
Exec=/opt/webstorm/bin/webstorm.sh
Icon=/opt/webstorm/bin/webstorm.svg
Type=Application
StartupNotify=true" >> /usr/share/applications/webstorm.desktop

echo "[Desktop Entry]                                                                    
Name=DataGrip
GenericName=DataSource IDE
Exec=/opt/datagrip/bin/datagrip.sh
Icon=/opt/datagrip/bin/datagrip.svg
Type=Application
StartupNotify=true" >> /usr/share/applications/datagrip.desktop


# desktop template
[Desktop Entry]
Name=Intellij Idea
GenericName=Java IDE
Exec=/opt/idea/bin/idea.sh
Icon=/opt/idea/bin/idea.svg
Type=Application
StartupNotify=true
```

## vscode

```shell
yay -S visual-studio-code-bin
```



# links

https://wiki.archlinux.org/

https://wiki.manjaro.org/index.php?title=Main_Page



