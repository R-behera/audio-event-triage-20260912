---
license: cc-by-4.0
language:
- en
pretty_name: Audio Event Triage Baseline Synthetic Evaluation Set
size_categories:
- n<1K
task_categories:
- audio-classification
tags:
- synthetic
- audio-ml
- evaluation
- audio-classification
- automatic-speech-recognition
- feature-extraction
- audio-to-audio
configs:
- config_name: default
  data_files:
  - split: train
    path: data/train.jsonl
  - split: test
    path: data/test.jsonl
---

# Audio Event Triage Baseline Synthetic Dataset

## Summary

This dataset contains 14 training examples and 4
held-out examples for **Operations teams need an explainable starting point for classifying alarms, machinery noise, and speech-like events.**

Every record is synthetic and includes:

- `input`: query, event, or feature description
- `label`: expected class, route, relation, or evidence category
- `context`: synthetic supporting context
- `source`: fictional source identifier
- `variant`: generation pattern
- `synthetic`: always `true`

## Uses

- Reproducible unit and integration tests
- Baseline model training
- Evaluation harness development
- Schema and architecture demonstrations

## Limitations

The included records are synthetic feature vectors and do not replace evaluation on licensed real audio.

This dataset does not represent real users, patients, customers, production
traffic, or licensed media. It must not be presented as real-world evidence.

## Related Model

[{{HF_NAMESPACE}}/audio-event-triage-20260912-model](https://huggingface.co/{{HF_NAMESPACE}}/audio-event-triage-20260912-model)
