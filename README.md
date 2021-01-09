# How to run a script of comands on every start of the server.

1. First write your script starting with specifing the executor, for example :
```md
#! /bin/bash
```
2. Remove your script to `/etc/init.d` folder
3. Make your file executable, by running this commend :
```bash
sudo chmod +x myscript
```
### Example
I will create a script to run a simple command:
```bash
#! /bin/sh

sudo apt-get update
```
```bash
mv myscript.sh /etc/init.d
mv /etc/init.d/myscript.sh /etc/init.d/myscript
sudo chmod +x /etc/init.d/myscript
sudo halt
```

# Network Statistics

```bash
netstat --inet -npl
```
