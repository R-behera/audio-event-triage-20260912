# Portfolio and Career Mapping

## Project Pitch

**Audio Event Triage Baseline** solves this real-world problem:

Operations teams need an explainable starting point for classifying alarms, machinery noise, and speech-like events.

It combines `audio-classification`, `automatic-speech-recognition`, `feature-extraction`, `audio-to-audio` with data ingestion, evaluation, observability, and scalable
service design.

## Why This Is More Than an API Wrapper

- Owns ingestion, validation, model artifacts, and evaluation datasets.
- Exposes evidence and confidence instead of returning opaque text.
- Includes offline evaluation and a CI release gate.
- Defines tracing, rollback, human review, and failure recovery.
- Provides a realistic path from free local baseline to production stack.

## AI Engineering Job Description Mapping

- Audio feature pipelines and model fine-tuning
- Class imbalance and macro-metric evaluation
- Streaming inference and confidence calibration
- Dataset licensing and provenance controls
- Model monitoring and human review workflows

## Resume-Ready Impact Targets

Replace targets with measured results after completing the roadmap:

- Reach macro recall >= 0.85 on a licensed evaluation set
- Review every prediction below the confidence threshold
- Process one minute of audio in under five seconds
- Track class-level drift and false-negative rates

Example resume format:

> Built Audio Event Triage Baseline, a production-oriented audio-ml system
> using FastAPI for audio metadata and prediction APIs, Transformers with Wav2Vec2 or audio spectrogram models, librosa or torchaudio for feature extraction; measured
> classification_accuracy, macro_recall, review_coverage and
> enforced regression thresholds in CI.

## Interview Discussion Areas

- Why this architecture fits the problem and where it fails
- Retrieval/model choice and baseline comparisons
- Evaluation-set construction and metric trade-offs
- Data privacy, authorization, and human escalation
- Scaling, caching, index tuning, and failure recovery
- Model, prompt, dataset, and deployment lineage
