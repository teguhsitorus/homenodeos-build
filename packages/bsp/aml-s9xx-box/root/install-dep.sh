#/bin/bash

echo "Installing CasaOS...";
curl -fsSL https://get.casaos.io | sudo bash
echo "CasaOS Installed successfully.";
echo "Downloading Cloudflare Tunnel...";
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64.deb && 
echo "Installing Cloudflare Tunnel...";
sudo dpkg -i cloudflared.deb
echo "Applying Cloudflare Tunnel Key...";
sudo cloudflared service install eyJhIjoiMjVkMzkxNThlOWVjY2RjZDc2ZjUxOWU3MjYwYTJiYjEiLCJ0IjoiZjEyYWYwNjctOWIyYy00NGU3LWEzNjEtZjVmMzZlMjNmMjg4IiwicyI6Ik9XUmpZbVV3WVdVdE1URXlOaTAwTURoaExUZzFaVFl0T0RJM09EZ3dNREF4TURnMSJ9
echo "Done.";
echo "Rebooting...";
reboot
