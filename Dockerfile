from ubuntu

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    TZ="UTC" \
    apt-get install -y \
        python3 \
        python3-pip \
	tzdata \
        libgtk-3-dev

COPY . /app

WORKDIR /app

RUN pip3 install pathlib2 && pip3 install -r requirements.txt

ENTRYPOINT ["./pyfa.py"]

