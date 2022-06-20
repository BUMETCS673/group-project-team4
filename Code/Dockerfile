FROM tensorflow/tensorflow
COPY . /backend
WORKDIR /backend/django
RUN apt-get update -y
RUN apt-get install vim -y
RUN apt-get install libpq-dev -y
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt