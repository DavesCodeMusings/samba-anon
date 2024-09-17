FROM debian:latest
LABEL org.opencontainers.image.source = "https://github.com/DavesCodeMusings/samba-anon"
RUN apt-get update  && apt-get install -y \
  samba \
  smbclient \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
RUN mkdir /srv/media /srv/public /srv/shared
COPY smb.conf /etc/samba/smb.conf
EXPOSE 445
HEALTHCHECK --interval=60s CMD smbclient -L //localhost -U guest -N
CMD ["/usr/sbin/smbd", "-F", "--debug-stdout", "--no-process-group", "-s", "/etc/samba/smb.conf"]
