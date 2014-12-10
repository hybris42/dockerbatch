FROM debian:wheezy

# Fix this with your dependencies
ENV batch_dependencies git cowsay

# Lasts command for build
ADD prepare.sh /root/prepare
# Your batch script
ADD batch.sh /root/batch

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y ${batch_dependencies} && \
    /root/prepare

CMD /root/batch