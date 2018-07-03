#!/bin/sh

echo "Install Kata Containers OBS repository"
export obs_url="http://download.opensuse.org/repositories/home:/katacontainers:/release/xUbuntu_$(lsb_release -rs)/"
sudo sh -c "echo 'deb $obs_url /' > /etc/apt/sources.list.d/kata-containers.list"
curl -sL  "${obs_url}/Release.key" | sudo apt-key add -
sudo apt-get update -qq
sudo apt-get install -y -qq qemu-lite kata-linux-container kata-containers-image

