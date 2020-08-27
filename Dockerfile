FROM python:3.8

# set the working directory in the container
WORKDIR /bot_marie

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . .

# command to run on container start
CMD [ "python", "./__init__.py" ]