# Install Phoenix v1.7.18 on Debian 12 Bookworm
This script will do as below:
- Build and install latest erlang OTP v27
- Download Elixir v1.18.1 prebuild on OTP v27 and add path to variable
- Install Phoenix v1.7.18

Install wget if u didn't have it yet

```
sudo apt install wget
```
Install script
```
wget -O install-phoenix.sh "https://raw.githubusercontent.com/Thaynaroth/debain-phoenix/refs/heads/main/install.sh"
chmod +x install-phoenix.sh
./install-phoenix.sh
rm install-phoenix.sh
```
