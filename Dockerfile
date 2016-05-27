FROM debian:jessie
MAINTAINER tgagor, https://github.com/tgagor

# Install ClamAV
RUN apt-get update \
  && apt-get install -y clamav clamav-freshclam unzip unrar \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Update ClamAV Definitions
RUN freshclam

CMD ["/usr/bin/clamscan"]
