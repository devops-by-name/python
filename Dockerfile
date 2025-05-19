FROM python:3.9-slim
COPY welcome_app.py /
RUN pip install flask
CMD ["python","welcome_app.py"]
