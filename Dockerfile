FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /k8s


COPY requirements.txt ./
RUN pip install --upgrade pip && pip install -r requirements.txt

## Step 2:
# Copy source code to working directory
COPY app.py ./
RUN mkdir model_data
ADD model_data ./model_data
  
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
ENTRYPOINT [ "python","app.py" ]
