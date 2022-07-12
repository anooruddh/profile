FROM python:3.8-slim
RUN mkdir -p /opt/project
COPY . /opt/project
WORKDIR /opt/project
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

ENTRYPOINT ["sh","/opt/project/entrypoint.sh"]