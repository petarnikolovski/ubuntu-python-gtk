FROM ubuntu:bionic

# Install basic ubuntu packages
RUN apt-get update && apt-get install -y \
  software-properties-common \
  sqlite3 \
  git

# Install Python related packages
RUN add-apt-repository -y ppa:deadsnakes/ppa

RUN apt-get update && apt-get install -y \
  python \
  python3 \
  python-pip \
  python3-pip \
  python3.5 \
  python3.7

# Install pipenv
RUN pip install pipenv

# Install pygobject dependencies
RUN apt-get update && apt-get install -y \
  libcairo2-dev \
  pkg-config \
  python-gi \
  python-gi-cairo \
  python3-gi \
  python3-gi-cairo \
  libgirepository1.0-dev \
  libglib2.0-dev \
  libffi-dev \
  gir1.2-gtk-3.0
