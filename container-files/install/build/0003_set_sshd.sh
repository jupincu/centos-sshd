#!/bin/bash
mkdir -p /var/run/sshd && \
ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key  && \
ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key  && \
ssh-keygen -q -N "" -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key && \
ssh-keygen -q -N "" -t ed25519 -f /etc/ssh/ssh_host_ed25519_key  && \
sed -ri 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd && \
mkdir -p /root/.ssh && \
chown root.root /root && \
chmod 700 /root/.ssh && \
echo 'root:nopost' | chpasswd
