#
# VERSION 0.0.1
#

FROM centos
MAINTAINER kazu69 "https://github.com/kazu69"
EXPOSE 22
EXPOSE 80:8080

# Setup
RUN yum update -y
RUN yum -y install git
RUN yum clean all

# Install ndenv
RUN git clone https://github.com/riywo/ndenv /usr/local/ndenv

# Set path
RUN echo '# ndenv' > /etc/profile.d/ndenv.sh
RUN echo 'export NDENV_ROOT=/usr/local/ndenv' >> /etc/profile.d/ndenv.sh
RUN echo 'export PATH="$NDENV_ROOT/bin:$PATH"' >> /etc/profile.d/ndenv.sh
ENV PATH /usr/local/ndenv/bin:$PATH
RUN echo 'eval "$(ndenv init -)"' >> /etc/profile.d/ndenv.sh
RUN chmod +x /etc/profile.d/ndenv.sh

## Install node-build
RUN mkdir -p /usr/local/ndenv/plugins
RUN git clone https://github.com/riywo/node-build.git /usr/local/ndenv/plugins/npde-build
RUN ln -s /proc/self/fd /dev/fd

ENV NDENV_ROOT /usr/local/ndenv
ENV PATH $NDENV_ROOT/shims:$NDENV_ROOT/bin:$PATH

# Install node
ADD ./.node_versions /root/.node_versions
ADD ./install.sh /root/install.sh
RUN /bin/bash -c /root/install.sh /root/.node_versions

#CMD ["/usr/bin/ndenv", "versions"]
