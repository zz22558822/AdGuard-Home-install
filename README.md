# AdGuard Home 一鍵安裝
## AdGuard Home install script

---

## 介紹
這是一個 AdGuard Home 排除 53Port 問題的一鍵安裝腳本，可快速在你的 Ubuntu 系統上設置 AdGuard Home。

---

## 使用環境
- **Ubuntu** 24.04 LTS (建議)

---

## 使用教學(自動)
1. 下載安裝腳本:
    ```sh
    sudo wget https://github.com/zz22558822/LAMP/releases/download/upload/install_adguardhome.sh
    ```

2. 執行腳本:
    ```sh
    sudo chmod +x install_adguardhome.sh && sudo bash ./install_adguardhome.sh
    ```
---

## 使用教學(手動)
1. 更新Ubuntu:
    ```sh
    sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade
    ```

2. 執行腳本:
    ```sh
    curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
    ```

3. 佔用問題(Ubuntu):
	```sh
    sudo systemctl stop systemd-resolved && sudo systemctl disable systemd-resolved
    ```
