FROM python:3.9
COPY ./requirements.txt /dockerBuild/requirements.txt
WORKDIR /dockerBuild
RUN pip install --no-cache-dir -r requirements.txt
COPY . /dockerBuild
CMD ["poetry", "run", "start"]
