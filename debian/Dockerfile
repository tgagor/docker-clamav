FROM debian:11-slim
MAINTAINER tgagor, https://github.com/tgagor

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# Install ClamAV
RUN apt-get update && \
    apt-get install -y \
        clamav clamav-freshclam unrar && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Update ClamAV Definitions
RUN freshclam

CMD ["/usr/bin/clamscan"]
