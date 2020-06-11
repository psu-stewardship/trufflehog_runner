FROM python:3-alpine
RUN apk add --no-cache git && pip install gitdb2==3.0.0 truffleHog
RUN adduser -S truffleHog
USER truffleHog
WORKDIR /proj
COPY exclude_patterns.txt /proj
ENTRYPOINT [ "trufflehog", "-x", "/proj/exclude_patterns.txt" ]
CMD [ "-h" ]
