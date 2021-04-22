# Creating a Wildcard Certificate with Certbot and Linode

Read the documentation
<https://certbot-dns-linode.readthedocs.io/en/stable/>

## Create Certificate

```bash
docker run --rm  \
  -e API_KEY=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ64 \
  -v "/etc/letsencrypt:/etc/letsencrypt" \
  -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
  bluebrown/certbot-linode \
   --email your@mail.com \
   -d YOURDOMAIN.com \
   -d *.YOURDOMAIN.com
```

The certificates will be placed in */etc/letsencrypt*

## Environment Variables

```.env
dns_linode_key = 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ64
dns_linode_version = [<blank>|3|4]
```
