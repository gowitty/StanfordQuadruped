# Stanford Quadruped

## How to Build Pupper
Main documentation: https://pupper.readthedocs.io/en/latest/

You can find the bill of materials, pre-made kit purchasing options, assembly instructions, software installation, etc at this website.


## Help
- Feel free to raise an issue (https://github.com/stanfordroboticsclub/StanfordQuadruped/issues/new/choose) or email me at nathankau [at] stanford [dot] edu
- We also have a Google group set up here: https://groups.google.com/forum/#!forum/stanford-quadrupeds


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
publisher.send() error at second call, if no Subscriber in advance.
## option 1:
        self.udp_publisher = UDPComms.Publisher(udp_publisher_port, udp_publisher_ip)
        #add to solve robot issue
        self.ps4_handle = UDPComms.Subscriber(udp_publisher_port, timeout=0.3
        
## option 2:
  severice restart =
```




