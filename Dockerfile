FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN mkdir -p /k8s
## Step 2:
# Copy source code to working directory
COPY app.py /k8s
COPY requirements.txt /k8s
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
WORKDIR /k8s
RUN pip install -r requirements.txt
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
ENTRYPOINT [ "python","app.py" ]
