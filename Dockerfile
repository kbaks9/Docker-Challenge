FROM python:3.8-slim
WORKDIR /myapp
COPY . .
RUN pip install flask redis
EXPOSE 5002
CMD ["python", "myapp3.py"]