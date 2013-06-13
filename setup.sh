apt-get install vim
apt-get install zlib1g-dev
apt-get install tftp
apt-get install g++
mkdir /tftpboot
chown -R thomas:thomas /tftpboot
apt-get install libncurses5-dev
sudo apt-get install subversion
sudo apt-get install tftpd
apt-get install xinetd
cat > /etc/xinetd.d/tftp << EOF
service tftp
{
          socket_type               = dgram
          protocol                  = udp
          wait                      = yes
          user                      = root
          server                    = /usr/sbin/in.tftpd
          server_args               = -s /tftpboot
          disable                   = no
          per_source                = 11
          cps                       = 100 2
          flags                     = IPv4
}
EOF
apt-get install fcitx-sunpinyin
apt-get install fcitx-bin
apt-get install flashplugin-installer
apt-get install git
apt-get install minicom
