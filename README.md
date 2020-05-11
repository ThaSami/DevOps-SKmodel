[![ThaSami](https://circleci.com/gh/ThaSami/DevOpsMicro.svg?style=svg)](https://app.circleci.com/pipelines/github/ThaSami/DevOpsMicro)

## Summary

This is an Example of Opertionalizing a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


### Files Summary

1. Dockerfile -> specify steps to build docker image to containerize the app
2. .circleci/config.yml -> specify steps to run CI pipeline
3. app.py -> flask app
4. make_prediction.sh -> an example to test the API
5. run_docker.sh -> this will build the image and run the container on port 8080
6. run_kubernetes -> this will run the container on kubernetes cluster on port 8080
7. upload_docker.sh -> tag and upload the docker image to docker hub
8. Makefile -> contains commands to test/install/lint.
9. requirmenets.txt -> contains dependencies of the API.


## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

