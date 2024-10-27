# factorio-server

## setup systemd service
1. copy `factorio.service` into `/etc/systemd/system/factorio.service`
1. enable service after boot `systemctl enable factorio.service`
1. start the server `systemctl start factorio.service`
for config and save details see CLI arguments in unit file

## update factorio version
1. stop the running server `systemctl stop factorio.service`
1. swapt the binaries 
1. start the server again `systemctl start factorio.service`