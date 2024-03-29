#
# FFMPEG Dockerfile
#
# https://github.com/joshfng/docker-ffmpeg
#

# Pull base image.
FROM joshfng/ubuntu_base

# Build FFMPEG.
RUN apt-get update
RUN apt-get install -y build-essential wget curl

RUN wget https://raw.github.com/joshfng/install_ffmpeg/master/install_ffmpeg.sh
RUN chmod +x install_ffmpeg.sh
RUN ./install_ffmpeg.sh

