#!/usr/bin/env bash

apt-get update
apt-get install -y  python3-pip \
                    python3-dev \
                    libpq-dev \
                    postgresql \
                    postgresql-contrib \
                    git \
                    nginx
pip3 install --upgrade pip
pip3 install virtualenv
