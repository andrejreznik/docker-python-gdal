##
# andrejreznik/python-gdal
#
# Debian 9.4 Stretch
FROM debian:latest
MAINTAINER Andrey Reznik <andrey.reznik.ce@gmail.com>

ENV PYTHON_VERSION 3.6.5
ENV PYTHON_PIP_VERSION 10.0.1
ENV GDAL_DAILY_URL http://www.gdal.org/daily/

ENV ROOTDIR /usr/local/src/python-gdal

# Copy the application folder inside the container
ADD . /usr/local/src/docker-python-gdal

# Compile and install Python
RUN ${ROOTDIR}/scripts/install-python.sh
RUN ${ROOTDIR}/scripts/install-gdal.sh

CMD python3 -V && pip3 -V && gdalinfo --version
