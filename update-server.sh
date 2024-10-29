#!/bin/bash
set -euxo pipefail

cd ~/factorio-server
rm factorio_headless.tar.xz
wget https://factorio.com/get-download/stable/headless/linux64 -O factorio_headless.tar.xz
sudo systemctl stop factorio.service
tar -xf factorio_headless.tar.xz --strip-components=1 -C ~/factorio-server/server/
sudo systemctl start factorio.service
