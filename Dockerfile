# python:alpine is 3.{latest}
FROM python:alpine 

RUN pip install flask

COPY src /src/

RUN pip install pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python", "python src/reconcile.py --debug"]
