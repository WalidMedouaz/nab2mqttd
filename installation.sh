pip install paho-mqtt==1.6.1
python manage.py makemigrations
python manage.py migrate
sudo cp nab2mqttd/nab2mqttd.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable nab2mqttd
sudo service nab2mqttd start