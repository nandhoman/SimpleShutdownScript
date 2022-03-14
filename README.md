# SimpleShutdownScript

## Description
This script is meant to be installed on a Linux device. The Linux device is monitoring a connection with another network device. If the another network device goes down the Linux device will shutdown. The another network device is monitored by ping.

## Implementation
This implementation requires evevation.

Do the following steps:
1. Copy the following 2 files in the /bin directory:
    - main.sh
    - startscript.sh
2. Edit the IP adres in de main.sh script. Fill the IP adres of the network device you want to look at.
3. Make them executable by entering:
 ```
 cd /bin
 sudo chmod +x main.sh
 sudo chmod +x startscript.sh
 ```
4. Let Linux execute them automatically:
```
sudo crontab -e
```
  Push insert on your keyboard to edit the content. :rofl:
  Add the rules listed in the file crontabs.

5. Make a place to store the variable of the script.
```
sudo nano /var/VSMAlive.log
```

