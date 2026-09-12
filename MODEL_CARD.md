---
license: mit
library_name: custom
pipeline_tag: audio-classification
datasets:
- {{HF_NAMESPACE}}/audio-event-triage-20260912-dataset
tags:
- synthetic-data
- transparent-baseline
- audio-ml
- audio-classification
- automatic-speech-recognition
- feature-extraction
- audio-to-audio
metrics:
- accuracy
---

# Audio Event Triage Baseline Baseline Model

## Model Description

This repository contains a small, transparent prototype model for
**Operations teams need an explainable starting point for classifying alarms, machinery noise, and speech-like events.**

The model combines per-label token weights with IDF-weighted evidence
retrieval. It was generated for reproducible architecture demonstrations and
does not call a hosted LLM.

## Evaluation

- Held-out synthetic examples: 4
- Accuracy: 1
- Intended metrics: classification_accuracy, macro_recall, review_coverage

## Intended Use

- Architecture prototyping
- CI and evaluation examples
- Local baseline comparisons
- Educational experimentation

## Hugging Face Task Coverage

- `audio-classification`
- `automatic-speech-recognition`
- `feature-extraction`
- `audio-to-audio`

## Limitations and Risks

The included records are synthetic feature vectors and do not replace evaluation on licensed real audio.

The dataset is synthetic and small. Do not use this model for consequential
decisions without representative data, expert review, and production-grade
evaluation.

## Reproducibility

The linked GitHub repository includes `train.py`, the exact dataset split,
evaluation code, and the model JSON format.
