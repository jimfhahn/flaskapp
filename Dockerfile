# python:alpine is 3.{latest}
FROM python:3.7

RUN pip install flask fuzzywuzzy html5lib isodate itsdangerous Jinja2 MarkupSafe pyparsing python-Levenshtein rdflib requests six SPARQLWrapper Werkzeug wheel

EXPOSE 5000

WORKDIR src

ENTRYPOINT ["python", "python src/reconcile.py --debug"]
