FROM debian:buster

RUN apt-get update && apt-get install -y vsftpd

# Set the FTP server to run in standalone mode
RUN echo "listen=YES" >> /etc/vsftpd.conf && \
    echo "listen_ipv6=NO" >> /etc/vsftpd.conf && \
    echo "anonymous_enable=NO" >> /etc/vsftpd.conf && \
    echo "local_enable=YES" >> /etc/vsftpd.conf && \
    echo "write_enable=YES" >> /etc/vsftpd.conf && \
    echo "local_umask=022" >> /etc/vsftpd.conf && \
    echo "dirmessage_enable=YES" >> /etc/vsftpd.conf && \
    echo "use_localtime=YES" >> /etc/vsftpd.conf && \
    echo "xferlog_enable=YES" >> /etc/vsftpd.conf && \
    echo "connect_from_port_20=YES" >> /etc/vsftpd.conf && \
    echo "chroot_local_user=YES" >> /etc/vsftpd.conf && \
    echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf && \
    echo "secure_chroot_dir=/var/run/tmp_ftp" >> /etc/vsftpd.conf && \
    echo "pasv_enable=YES" >> /etc/vsftpd.conf && \
    echo "pasv_min_port=40000" >> /etc/vsftpd.conf && \
    echo "pasv_max_port=40100" >> /etc/vsftpd.conf && \
    echo "pasv_address=ftp-server" >> /etc/vsftpd.conf && \
    echo "local_root=/data/db_ftp" >> /etc/vsftpd.conf

# RUN mkdir -p /data/db_ftp
RUN mkdir -p /var/run/tmp_ftp

RUN useradd -m -s /bin/bash hjrifi && \
    echo "hjrifi:lcom" | chpasswd

# RUN chown -R hjrifi /data/db_ftp

EXPOSE 21


CMD ["vsftpd", "/etc/vsftpd.conf"]