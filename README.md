# Creating a Wildcard Certificate with Certbot and Linode

Read the documentation
<https://certbot-dns-linode.readthedocs.io/en/stable/>

Create the `linode.ini` at the root path of this directory

```ini
dns_linode_key = 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ64
dns_linode_version = [<blank>|3|4]
```

Change `YOURDOMAIN.com` in the `Makefile` for your actual domain

## Create the certificate

```bash
sudo make
sudo make clean
```

The certificates will be places in /etc/letsencrypt
