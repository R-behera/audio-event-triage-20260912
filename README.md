# Audio Event Triage Baseline

A lightweight audio-event classifier built around auditable extracted features and confidence-based review.

Generated on 2026-09-12 as an independent production-AI architecture project.

## Real-World Problem

Operations teams need an explainable starting point for classifying alarms, machinery noise, and speech-like events.

## Hugging Face Tasks

- `audio-classification`
- `automatic-speech-recognition`
- `feature-extraction`
- `audio-to-audio`

## Recommended Production Stack

- FastAPI for audio metadata and prediction APIs
- Transformers with Wav2Vec2 or audio spectrogram models
- librosa or torchaudio for feature extraction
- MLflow for experiment and model registry
- Object storage for licensed audio
- OpenTelemetry for inference latency and error traces

## Included

- Runnable Python pipeline with no runtime dependencies
- Local JSON HTTP inference service
- Public-data API connector with explicit provenance
- Reproducible training script
- Held-out evaluation command
- Synthetic dataset with explicit provenance
- Trained transparent baseline model
- Architecture and production-boundary documentation
- Unit tests, CI workflow, and Dockerfile
- Hugging Face-ready model and dataset cards

## Architecture

1. Audio feature schema
1. Feature normalization
1. Prototype classifier
1. Low-confidence review path
1. Class-level evaluation

See [ARCHITECTURE.md](ARCHITECTURE.md) for the full flow and production
boundaries.

## Quick Start

```bash
python3 -m unittest discover -s tests
PYTHONPATH=src python3 -m audio_event_triage.cli "high energy repeating tone peak frequency 2100"
PYTHONPATH=src python3 evaluate.py
PYTHONPATH=src python3 -m audio_event_triage.service
```

The service exposes `GET /health` and `POST /predict`.

Rebuild the model:

```bash
python3 train.py
```

## Baseline Evaluation

- Held-out synthetic examples: 4
- Accuracy: 1
- Target metrics: classification_accuracy, macro_recall, review_coverage

This score verifies that the code and evaluation contract work. It does not
claim production performance.

## Hugging Face Artifacts

When the controller has a Hugging Face token and namespace configured, it
publishes:

- Dataset: `audio-event-triage-20260912-dataset`
- Model: `audio-event-triage-20260912-model`

## Portfolio Value

This repository maps to production AI engineering work in:

- Audio feature pipelines and model fine-tuning
- Class imbalance and macro-metric evaluation
- Streaming inference and confidence calibration
- Dataset licensing and provenance controls
- Model monitoring and human review workflows

See [PORTFOLIO.md](PORTFOLIO.md) for resume-ready impact targets and interview
discussion areas.

## 1-3 Month Expansion

Follow [ROADMAP.md](ROADMAP.md) to add real-world APIs, a stronger open model,
durable orchestration, evaluation, observability, scalability testing, and a
public deployment.

## Safety

The included records are synthetic feature vectors and do not replace evaluation on licensed real audio.

Review [ARCHITECTURE.md](ARCHITECTURE.md),
[PRODUCTION.md](PRODUCTION.md), [SECURITY.md](SECURITY.md),
[MODEL_CARD.md](MODEL_CARD.md), and [DATASET_CARD.md](DATASET_CARD.md) before
adapting this project.
