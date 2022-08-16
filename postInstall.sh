# Hardware
echo -n "Do you use amdgpu_bl0? [y/n]: "
read brightness

if [[ $brightness == "y" ]]; then
	cp ./.config/brightness-permission.service >/etc/systemd/system/brightness-permission.service
fi

# Shell
git clone https://github.com/AndresMpa/desl/
cd desl && ./install.sh
