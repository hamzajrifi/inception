FROM debian:buster

# Update package list and install vsftpd FTP server
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
    echo "secure_chroot_dir=/var/run/vsftpd/empty" >> /etc/vsftpd.conf && \
    echo "pasv_enable=YES" >> /etc/vsftpd.conf && \
    echo "pasv_min_port=40000" >> /etc/vsftpd.conf && \
    echo "pasv_max_port=40100" >> /etc/vsftpd.conf && \
    echo "pasv_address=<YOUR_PUBLIC_IP_ADDRESS>" >> /etc/vsftpd.conf && \
    echo "local_root=/data/db_ftp" >> /etc/vsftpd.conf

# Create a user and set a password for FTP login
RUN useradd -m -s /bin/bash ftpuser && \
    echo "ftpuser:password" | chpasswd

# Expose the FTP port
EXPOSE 21

# Start the FTP server
CMD ["vsftpd", "/etc/vsftpd.conf"]