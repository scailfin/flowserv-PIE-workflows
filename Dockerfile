FROM python:3.9

RUN pip install --upgrade pip

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

COPY PIE /app/PIE
COPY setup.py /app/setup.py
COPY readme.md /app/readme.md
WORKDIR /app
RUN pip install /app
RUN rm -Rf /app
WORKDIR /
