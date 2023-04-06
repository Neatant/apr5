FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY ./app /app

RUN pip install --upgrade pip && \
    pip install pillow && \
    pip install tensorflow && \
    pip install keras

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
