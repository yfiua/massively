# laptop-lid
Disable fingerprint when the laptop lid is closed, based on [this post](https://unix.stackexchange.com/questions/678609/how-to-disable-fingerprint-authentication-when-laptop-lid-is-closed).

1. Copy `laptop-lid.sh` to `/etc/acpi/`.

```sh
sudo cp laptop-lid.sh /etc/acpi/
```

2. Copy `laptop-lid` to `/etc/acpi/events/` and restart `acpid` service.

```sh
sudo cp laptop-lid /etc/acpi/events/
sudo service acpid restart
```

3. Copy `laptop-lid.service` to `/etc/systemd/system/`.

```sh
sudo cp laptop-lid.service /etc/systemd/system/
```

4. Reload the systemd config files, enable and start the service.

```sh
sudo systemctl daemon-reload
sudo systemctl enable laptop-lid.service
sudo systemctl start laptop-lid.service
```
