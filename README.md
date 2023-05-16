# 我的Debian配置

本文记录了我的私人Debian配置。基本上记录了配置的全过程。

## 安装Debian

本步骤需要：

1. 一台联网电脑
2. 一个大小足够的U盘

从 Debian 官网下载 unofficial 的 live 镜像：https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/

由于我个人使用 KDE 桌面，因此我只下载 KDE 版本的live。

之后，使用 (Ventoy)[https://github.com/ventoy] 制作引导盘。

引导盘制作完毕后，使用这个引导盘来进入live系统，live系统的桌面上有一个Install，点进去，按照提示进行安装。

安装结束后，关机，拔出引导盘，重启。

live 系统的默认用户名是user，默认的密码是live。

## 更换apt源

进入系统后的第一件事情就是先更换apt源。我使用清华源提供的testing。

使用脚本 `upgrade-to-testing.sh` 即可。

执行结束后重启。

## 
