#!/bin/bash

# 更新系統並升級
echo "更新系統並升級..."
sudo apt update && sudo apt upgrade -y

# 更新Ubuntu
sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade

# 檢查是否安裝了 curl
echo "檢查是否安裝了 curl..."
if ! command -v curl &> /dev/null
then
    echo "正在安裝 curl..."
    sudo apt-get -y install curl
else
    echo "curl 已安裝。"
fi

# 使用 curl 運行安裝腳本
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v

# validating ports 53 佔用問題(Ubuntu)
echo "判斷用戶Linux系統是否為Ubuntu..."
if [[ $(lsb_release -is) == "Ubuntu" ]]; then
    echo "系統為 Ubuntu"
    sudo systemctl stop systemd-resolved
    sudo systemctl disable systemd-resolved
    echo "已解決解決 53 Port佔用問題。"
else
    echo "非 Ubuntu 系統，跳過 53 Port佔用問題。"
fi

# AdGuard Home 完成
echo "AdGuard Home 建置完成."
