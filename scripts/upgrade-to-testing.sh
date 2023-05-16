sudo apt update && sudo apt install aptitude -y

if [ $? -eq 0 ]; then
  sudo printf "
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ testing main contrib non-free non-free-firmware
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ testing main contrib non-free non-free-firmware

deb https://mirrors.tuna.tsinghua.edu.cn/debian/ testing-updates main contrib non-free non-free-firmware
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ testing-updates main contrib non-free non-free-firmware

deb https://mirrors.tuna.tsinghua.edu.cn/debian/ testing-backports main contrib non-free non-free-firmware
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ testing-backports main contrib non-free non-free-firmware

deb https://mirrors.tuna.tsinghua.edu.cn/debian-security testing-security main contrib non-free non-free-firmware
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security testing-security main contrib non-free non-free-firmware

# deb https://security.debian.org/debian-security testing-security main contrib non-free non-free-firmware
# # deb-src https://security.debian.org/debian-security testing-security main contrib non-free non-free-firmware" > /etc/apt/sources.list

  sudo aptitude update && sudo aptitude dist-upgrade -y && sudo aptitude autoclean
fi

