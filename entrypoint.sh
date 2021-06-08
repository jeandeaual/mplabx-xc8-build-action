#!/bin/sh -l

MPLABX_VERSION=$1
XC8_VERSION=$2
PROJECT=$3
CONFIGURATION=$4

cd /docker-action
echo "Creating a docker image with MPLAB X version ${MPLABX_VERSION} and XC8 version ${XC8_VERSION}"

# Here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build \
    -t docker-action \
    --build-arg MPLABX_VERSION="${MPLABX_VERSION}" \
    --build-arg XC8_VERSION="${XC8_VERSION}" \
    . \
    && docker run docker-action "${PROJECT}" "${CONFIGURATION}"
