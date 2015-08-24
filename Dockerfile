#this is a dockerfile

FROM            ubuntu:14.04
MAINTAINER      blacksun <sunye1996517@gmail.com>

# Install packages
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc file
RUN apt-get clean 

#git openwrt trunk code
RUN git clone git://git.openwrt.org/openwrt.git


#install and run ssh server
RUNopenssh-server openssh-client
RUN /etc/init.d/ssh restart
CMD ["/usr/sbin/sshd", "-D"]