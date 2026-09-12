FROM python:3.12-slim

WORKDIR /app
COPY . .

ENV PYTHONPATH=/app/src
EXPOSE 8080
CMD ["python", "-m", "audio_event_triage.service"]
