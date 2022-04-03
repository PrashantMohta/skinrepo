sudo rsync -r -h /srv/ftp/_skins ~/skins/
cd ~/skins/
sudo chown -R ubuntu:ubuntu _skins .
sudo chmod -R 755 _skins