FROM python:3.7.3-stretch


WORKDIR /k8s
COPY requirements.txt ./
COPY Makefile ./
RUN make install
COPY app.py ./
RUN mkdir model_data
COPY model_data ./model_data

EXPOSE 80

ENTRYPOINT [ "python","app.py" ]
