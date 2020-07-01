FROM python:alpine

RUN pip install --no-cache-dir mkdocs

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]