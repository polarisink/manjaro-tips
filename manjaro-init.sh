# update pamac
sudo pamac update

# change china mirror
sudo pacman-mirrors -i -c China -m rank
echo "[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf
sudo pacman -S archlinuxcn-keyring

# necessary for build
sudo pacman -S base-devel

# if can not open terminal,install deepin terminal,edit /etc/locale.gen
# sudo locale-gen

# install yay
sudo pacman -S yay

# update system
sudo pacman -Syyu

# common pacman command
# sudo pacman -S 软件名　# 安装
# sudo pacman -R 软件名　# 删除单个软件包，保留其全部已经安装的依赖关系
# sudo pacman -Rs 软件名 # 除指定软件包，及其所有没有被其他已安装软件包使用的依赖关系
# sudo pacman -Ss 软件名  # 查找软件
# sudo pacman -Sc # 清空并且下载新数据
# sudo pacman -Syu　# 升级所有软件包
# sudo pacman -Qs # 搜索已安装的包


# tim && wechat
yay -S com.qq.tim.spark
yay -S com.qq.wechat.spark
# adjust dpi
cd ${home}
env WINEPREFIX="$HOME/.deepinwine/Spark-WeChat" deepin-wine5 winecfg
env WINEPREFIX="$HOME/.deepinwine/Spark-TIM" deepin-wine5 winecfg
# fonts
sudo pacman -S wqy-microhei wqy-bitmapfont wqy-zenhei wqy-microhei-lite ttf-dejavu noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk
# refresh fonts cache
fc-cache -fv
#if wechat has error codes,download msyh.ttf to ~/.deepinwine/Spark-WeChat/drive_c/windows/Fonts

# common software
yay -S google-chrome
yay -S netease-cloud-music
yay -S typora
yay -S nutstore
yay -S goldendict
yay -S baidunetdisk-bin
yay -S xunlei-bin
yay -S you-get
yay -S thefuck
yay -S tmux
yay -S lolcat
yay -S neofetch
yay -S visual-studio-code-bin
yay -S wps-office
yay -S tilix
yay -S flameshot

# jetbrains
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



# snap store
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install snap-store

# show system
neofetch | lolcat

sudo pacman -Syyu
