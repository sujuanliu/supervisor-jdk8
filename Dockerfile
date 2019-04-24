FROM library/jdk8:v191
MAINTAINER sujuanliu <sujuanliu@gmail.com>

RUN mkdir -p /etc/supervisor/conf.d && \
    yum -y install python-setuptools && \
    easy_install supervisor 
ADD supervisord.conf /etc/supervisor/
CMD ["/bin/bash"]
