yes | sudo apt-get install libatlas-base-dev
yes | pip3 install numpy transforms3d pigpio pyserial
yes | pip install numpy transforms3d pigpio pyserial
yes | sudo pip install numpy transforms3d pigpio pyserial

cd ..
git clone https://github.com/stanfordroboticsclub/UDPComms.git
cd UDPComms
sudo bash install.sh

cd ..
#git clone https://github.com/stanfordroboticsclub/PupperCommand.git
git clone https://github.com/gowitty/PupperCommand.git
cd PupperCommand
sudo bash install.sh

cd ..
git clone https://github.com/stanfordroboticsclub/PS4Joystick.git
cd PS4Joystick
sudo bash install.sh

cd ..
#sudo systemctl enable joystick
#already in PupperCommand install.sh

wget https://github.com/joan2937/pigpio/archive/v78.zip
unzip v78.zip
cd pigpio-78
make
sudo make install
cd ..

cd StanfordQuadruped
sudo ln -s $(realpath .)/robot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable robot
sudo systemctl start robot
