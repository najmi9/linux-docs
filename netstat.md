# Network Statisitics

Netstat is an indispensable tool that shows you all of the network connections on an endpoint. 

```bash
sudo netstat -anptu
```


```bash
netstat --inet -npl
```
If the source address is 0.0.0.0, it is listening on all available interfaces.
The Recv-Q and Send-Q fields show the number of bytes pending acknowledgment in either direction.