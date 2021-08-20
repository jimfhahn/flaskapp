# python:alpine is 3.{latest}
FROM python:3.7

RUN pip install gcc flask fuzzywuzzy html5lib isodate itsdangerous Jinja2 MarkupSafe pyparsing python-Levenshtein rdflib requests six SPARQLWrapper Werkzeug wheel

EXPOSE 5000

ENTRYPOINT ["python", "python reconcile.py --debug"]
