FROM python:3.8-slim
WORKDIR /myapp
COPY . .
RUN pip install flask redis
CMD ["python", "myapp3.py"]