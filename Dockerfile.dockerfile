FROM python:3.9
WORKDIR /api

COPY . /api  

RUN pip install -r requirements.txt

ENV PYTHONPATH=/api

EXPOSE 8000

# Run Uvicorn with the FastAPI app
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--reload"]

# Run Uvicorn with the FastAPI app
#CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

