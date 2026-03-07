# Environment Registry

This registry contains research on environmental factors that impact health — products, materials, toxin avoidance, and lifestyle environment decisions.

## Structure

Each item in the registry follows this structure:

```
environment/
├── CLAUDE.md                        # This file (instructions + index)
└── [topic-name]/
    ├── [topic-name].md              # Research, comparisons, recommendations
    └── screenshots/                 # Product photos, research screenshots
```

Standalone research files (e.g., `stainless-steel-pill-container-research.md`) are also acceptable at the top level for broad topics.

## Naming Convention

- Use lowercase with hyphens: `stainless-steel-pill-container-research`, `water-filtration`, `emf-exposure`

## Item File Template

Each research file should include:

```markdown
[<- Back to Index](../CLAUDE.md)

# [Topic Name]

**Category**: Product Research | Toxin Avoidance | Home Environment | Personal Care
**Status**: Researching | Decided | Implemented
**Date**: YYYY-MM-DD

## Overview

Brief description and why this matters for health.

## Research

Key findings, product comparisons, evidence.

## Recommendations

What to buy, use, or change.

## Notes

Personal observations, decisions made, etc.

## References

Links to studies, product pages, etc.
```

---

## Index

| Name | Category | Status | Summary |
| ---- | -------- | ------ | ------- |
| [Stainless Steel Pill Container Research](stainless-steel-pill-container-research.md) | Product Research | Researching | Metal vs plastic supplement storage, product comparisons |

---

## Adding New Items

1. Create file: `[topic-name].md` (or a folder with `[topic-name]/[topic-name].md` for larger topics)
2. Optionally create: `[topic-name]/screenshots/`
3. Update this index

## AI Instructions

When working with this registry:

- Always update the index when adding/removing items
- Consider how environmental factors interact with supplements in `../supplements/` and medications in `../medications/`
- Prioritize evidence-based recommendations over marketing claims
- Flag products or materials with known health concerns (BPA, microplastics, heavy metals, etc.)
