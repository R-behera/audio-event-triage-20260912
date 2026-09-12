# Production Design

This document defines how to take the dependency-free baseline toward a
portfolio-quality production implementation. The goal is to demonstrate the
engineering around an AI model, not merely wrap a hosted inference API.

## Real-World Data Sources

| Source | Purpose | Endpoint |
| --- | --- | --- |
| Freesound API | Licensed public audio search when an API key is configured | `https://freesound.org/apiv2/search/text/?query=alarm&page_size=5` |
| Hugging Face Datasets API | Discover public audio datasets and metadata | `https://huggingface.co/api/datasets?search=audio-classification&limit=5` |

Use `python -m audio_event_triage.real_world` to fetch a small raw
snapshot. Review API terms, data licenses, rate limits, privacy, and retention
before building a durable ingestion job.

## Service Boundaries

- **Ingestion:** resumable API clients, raw snapshots, schema validation, and
  dead-letter handling.
- **Index/training:** versioned transformations, deterministic splits, and
  artifact lineage.
- **Online inference:** typed requests, confidence thresholds, evidence, and
  human review.
- **Evaluation:** offline golden sets, adversarial cases, release thresholds,
  and production feedback.
- **Observability:** OpenTelemetry traces, latency and cost metrics, model and
  prompt versions, and privacy-safe logs.

## Scaling Targets

- Reach macro recall >= 0.85 on a licensed evaluation set
- Review every prediction below the confidence threshold
- Process one minute of audio in under five seconds
- Track class-level drift and false-negative rates

## Data and Model Versioning

Store the source snapshot ID, transformation commit, dataset version, model
version, evaluation report, and deployment SHA together. A release is eligible
only when its evaluation thresholds pass in CI.

## Reliability

- Make ingestion and tool calls idempotent.
- Retry transient failures with bounded exponential backoff.
- Persist workflow state before external side effects.
- Add circuit breakers around remote APIs and model providers.
- Preserve the last known-good index and model for rollback.

## Security

- Use least-privilege credentials and secret managers.
- Enforce authorization before retrieval or tool execution.
- Redact sensitive fields before traces and logs.
- Validate uploaded documents and isolate parsing workloads.
- Require human approval for consequential state changes.
