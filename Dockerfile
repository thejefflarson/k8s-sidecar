FROM        python:3.7-slim
WORKDIR     /app
COPY        requirements.txt .
RUN         echo "[global]\nextra-index-url=https://www.piwheels.org/simple" >> /etc/pip.conf
RUN         pip install -r requirements.txt
COPY        sidecar/* ./
ENV         PYTHONUNBUFFERED=1
CMD         [ "python", "-u", "/app/sidecar.py" ]
