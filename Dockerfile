FROM debian:latest
RUN apt-get update && apt-get install -y samba
RUN mkdir /srv/public
RUN mkdir /srv/shared
COPY smb.conf /etc/samba/smb.conf
EXPOSE 445
CMD ["/usr/sbin/smbd", "-i", "-s", "/etc/samba/smb.conf"]
