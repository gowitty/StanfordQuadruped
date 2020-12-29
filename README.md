

# Gowitty notes
```shell
$ sudo apt install python-pip

$ sudo apt install python3-pip

$ sudo apt install git

```

## Piwheels
```shell
$ sudo nano /etc/pip.conf

extra-index-url = https://pypi.doubanio.com/simple
Looking in indexes: https://pypi.org/simple, https://pypi.doubanio.com/simple

should use index-url instead of extra-index-url

[global]
index-url = https://pypi.doubanio.com/simple
[install]
trusted-host = pypi.doubanio.com
```


```shell
git clone https://github.com/gowitty/StanfordQuadruped.git
cd StanfordQuadruped
sudo bash install.sh
```

```shell
#StanfordQuadruped/src/JoystickInterface.py",

udp_publisher_ip : publish onto the ip

##
pi@raspberrypi:~ $ sudo systemctl status robot
● robot.service - Robot control service
   Loaded: loaded (/home/pi/StanfordQuadruped/robot.service; enabled; vendor preset: enabled)
   Active: failed (Result: exit-code) since Tue 2020-12-29 13:48:23 GMT; 4min 22s ago
  Process: 343 ExecStartPre=/usr/bin/sudo pigpiod (code=exited, status=0/SUCCESS)
  Process: 412 ExecStart=/usr/bin/python3 /home/pi/StanfordQuadruped/run_robot.py (code=exited, status=1/FAILURE)
 Main PID: 412 (code=exited, status=1/FAILURE)

Dec 29 13:48:13 raspberrypi python3[412]:     joystick_interface.set_color(config.ps4_deactivated_color)
Dec 29 13:48:13 raspberrypi python3[412]:   File "/home/pi/StanfordQuadruped/src/JoystickInterface.py", line 94, in set_color
Dec 29 13:48:13 raspberrypi python3[412]:     self.udp_publisher.send(joystick_msg)
Dec 29 13:48:13 raspberrypi python3[412]:   File "/usr/local/lib/python3.7/dist-packages/UDPComms.py", line 53, in send
Dec 29 13:48:13 raspberrypi python3[412]:     self.sock.send(msg)
Dec 29 13:48:13 raspberrypi python3[412]: ConnectionRefusedError: [Errno 111] Connection refused
Dec 29 13:48:13 raspberrypi systemd[1]: robot.service: Main process exited, code=exited, status=1/FAILURE
Dec 29 13:48:23 raspberrypi systemd[1]: robot.service: State 'stop-sigterm' timed out. Killing.
Dec 29 13:48:23 raspberrypi systemd[1]: robot.service: Killing process 410 (pigpiod) with signal SIGKILL.
Dec 29 13:48:23 raspberrypi systemd[1]: robot.service: Failed with result 'exit-code'.


publisher.send() error at second call, if no Subscriber in advance.
## option 1:
        self.udp_publisher = UDPComms.Publisher(udp_publisher_port, udp_publisher_ip)
        #add to solve robot issue
        self.ps4_handle = UDPComms.Subscriber(udp_publisher_port, timeout=0.3
        
## option 2:
  severice restart =
```




