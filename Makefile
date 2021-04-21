build:
	docker run --rm -d  --name web -p 80:80 \
		-v "$(CURDIR)/webroot:/usr/share/nginx/html:ro" nginx

	docker run -it --rm --name certbot --network host \
		-v "/etc/letsencrypt:/etc/letsencrypt" \
		-v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
		-v "$(CURDIR)/webroot:/webroot" \
		-v "$(CURDIR)/linode.ini:/linode.ini" \
		bluebrown/certbot-linode certonly \
			--dns-linode \
			--dns-linode-credentials /linode.ini \
			--email rainbowstack@gmail.com \
			--debug -v -d *.YOURDOAMIN.com -d YOURDOAMIN.com

clean:
	docker stop web