---
title: "Getting Started with HDR Gain Map (ISO 21496-1)"
date: 2026-04-15
summary: "A hands-on introduction to the ISO 21496-1 gain map standard for HDR still images — what it is, how it works, and why it matters for the next generation of computational photography."
layout: research-article
---

## What is a Gain Map?

The ISO 21496-1 standard defines a **gain map** as an auxiliary image that encodes the ratio between an SDR (Standard Dynamic Range) base image and its HDR (High Dynamic Range) counterpart. This allows a single JPEG file to carry both SDR and HDR representations efficiently.

## Key Concepts

1. **Base Image**: A standard SDR JPEG that looks correct on any conventional display
2. **Gain Map**: A secondary image encoding luminance ratios — typically stored as a JPEG auxiliary image or in MPF (Multi-Picture Format)
3. **HDR Reconstruction**: `HDR_pixel = SDR_pixel × 2^gain_map_pixel` (simplified)

## Why ISO 21496-1 Matters

Before this standard, HDR image delivery was fragmented:
- **HDR10/HLG** required separate display pipelines
- **AVIF/HEIC** had limited ecosystem support
- **JPEG-XL** adoption was slow

ISO 21496-1 bridges the gap: it wraps HDR into the ubiquitous JPEG format, making HDR practical for web delivery, social media, and consumer photography.

## The Gain Map Analyzer

I created [HDRGainMapAnalyzer](https://github.com/daoyuli/HDRGainMapAnalyzer) to inspect and visualize gain map JPEG files. It helps developers and researchers:

- Parse gain map metadata from JPEG files
- Visualize the gain map
- Analyze gain map statistics
