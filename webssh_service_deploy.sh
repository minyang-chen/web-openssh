sudo cp webssh.service /lib/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start webssh
sudo systemctl enable webssh
sudo systemctl status webssh
