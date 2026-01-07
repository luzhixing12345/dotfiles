
# https://chatgpt.com/share/690abaeb-f248-8012-bda7-b16a07dc56b0
lsinitramfs /boot/initrd.img-$(uname -r) | grep -i mem

echo "blacklist kmem" | sudo tee /etc/modprobe.d/blacklist-kmem.conf
echo "install kmem /bin/false" | sudo tee -a /etc/modprobe.d/blacklist-kmem.conf

sudo update-initramfs -u -k $(uname -r)
