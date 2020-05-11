FROM python:3.7.3-stretch


WORKDIR /k8s
RUN mkdir model_data

COPY requirements.txt Makefile app.py ./
COPY model_data ./model_data

RUN make install


EXPOSE 80

ENTRYPOINT [ "python","app.py" ]
