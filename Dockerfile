FROM public.ecr.aws/docker/library/python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn","main:app","--host","0.0.0.0"]