FROM alpine:3.4

RUN apk update
RUN apk add curl
RUN apk add vim
RUN apk add git
FROM python:3.7

RUN pip install flask fuzzywuzzy html5lib isodate itsdangerous Jinja2 MarkupSafe pyparsing python-Levenshtein rdflib requests six SPARQLWrapper Werkzeug wheel

EXPOSE 5000
