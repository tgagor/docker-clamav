FROM alpine:3
MAINTAINER tgagor, https://github.com/tgagor

# Install ClamAV
RUN apk add --no-cache clamav

# Update ClamAV Definitions
RUN freshclam

CMD ["/usr/bin/clamscan"]
