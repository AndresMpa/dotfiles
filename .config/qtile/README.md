sudo nvim /etc/mkinitcpio.conf

Add line:

MODULES=(amdgpu)

Then run:

sudo mkinitcpio -P
