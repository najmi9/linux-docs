# SystemD commands

```bash
sudo systemctl list-units|egrep .service # list all services
sudo systemctl list-units-files t#show all installed unit file
sudo systemctl list-units --failed #show all failed services
sudo systemctl restart ssh.service  #Stop and then start one or more units specified on the command line. If the units are not running yet, they will be started.
sudo systemctl start ssh # start a unit
sudo systemctl enable ssh # start a service every time the server turn on.
sudo systemctl reload ssh #Asks all units listed on the command line to reload their configuration.
sudo systemctl status ssh # status of a service
```
# Query the systemd journal: `journalctl`

```bash
journalctl -a
journalctl -f
journalctl -n
```
* a : Show all fields in full, even if they include unprintable characters or are very long.

* f : Show only the most recent journal entries, and continuously print new entries as they are appended to the journal.

* n : Show the most recent journal events and limit the number of events shown.

# Output the last part of files : `tail`

```bash
tail -f -n=30 file.log
```
* f : output appended data as the file grows;
* n : output the last 30 lines,