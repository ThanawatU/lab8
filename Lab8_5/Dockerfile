FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-venv \
    python3-pip && \
    apt-get clean

RUN python3 -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

RUN pip install --upgrade pip
RUN pip install robotframework

EXPOSE 8080
USER jenkins

