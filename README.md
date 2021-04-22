# samba-anon
Anonymous Samba share in a Docker container for Raspberry Pi / ARM.

The Docker container is available on Docker Hub https://hub.docker.com/r/davescodemusings/samba-anon

What you'll find here is the Ansible playbook that automates the build of that container. If you're
interested in what the Dockerfile or smb.conf looks like, take a peek inside the build-samba-docker.yml
file and look for `content: |` directives.
