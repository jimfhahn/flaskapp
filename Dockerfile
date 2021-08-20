# python:alpine is 3.{latest}
FROM python:alpine 

RUN pip install flask fuzzywuzzy html5lib isodate itsdangerous Jinja2 MarkupSafe pyparsing python-Levenshtein rdflib requests six SPARQLWrapper Werkzeug wheel

EXPOSE 5000

ENTRYPOINT ["python", "python reconcile.py --debug"]
