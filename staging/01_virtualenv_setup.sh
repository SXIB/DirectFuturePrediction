#/bin/bash

#Written for Debian based system
#Install Dependancy
sudo apt-get update
sudo apt-get install --yes build-essential zlib1g-dev libsdl2-dev libjpeg-dev \
    nasm tar libbz2-dev libgtk2.0-dev cmake git libfluidsynth-dev libgme-dev \
    libopenal-dev timidity libwildmidi-dev unzip libboost-all-dev \
    python3-dev python3-pip python3-venv

#Install Virtual-env
cd $(basedir ${0})/../
mkdir venv
virtualenv -p python3.5 venv
source ./venv/bin/activate

#Run pip
pip install -r requirements_nogpu.txt
