# Nutrition Registry

This registry contains detailed information about dietary protocols, meal planning, and nutritional strategies.

## Structure

Each item in the registry follows this structure:

```
nutrition/
├── CLAUDE.md              # This file (instructions + index)
└── [topic-name]/
    ├── [topic-name].md    # Details, rationale, guidelines
    └── screenshots/       # Meal photos, labels, research screenshots
```

## Naming Convention

- Use lowercase with hyphens: `high-protein-plan`, `anti-inflammatory-diet`
- For specific foods/items: `grass-fed-beef`, `fermented-foods`

## Item File Template

Each `[topic-name].md` should include:

```markdown
[<- Back to Index](../CLAUDE.md)

# [Topic Name]

**Category**: Diet Protocol | Food Item | Meal Plan | Micronutrient Strategy
**Status**: Active | Testing | Paused | Discontinued
**Started**: YYYY-MM-DD

## Overview

Brief description and purpose.

## Guidelines

Key rules, macros, or targets.

## Rationale

Why this approach — evidence and personal reasoning.

## Tracking

What to measure (weight, energy, biomarkers, etc.)

## Notes

Personal observations, adjustments, etc.

## References

Links to studies, resources, etc.
```

---

## Index

### Diet Protocols

| Name | Status | Purpose |
| ---- | ------ | ------- |
|      |        |         |

### Food Items / Categories

| Name | Status | Purpose |
| ---- | ------ | ------- |
|      |        |         |

---

## Adding New Items

1. Create folder: `[topic-name]/`
2. Create file: `[topic-name]/[topic-name].md`
3. Create folder: `[topic-name]/screenshots/`
4. Update this index

## AI Instructions

When working with this registry:

- Always update the index when adding/removing items
- Cross-reference with biomarkers in `../../biomarkers/`
- Note interactions with supplements in `../supplements/` and medications in `../medications/`
- Consider impact on tracked biomarkers when recommending dietary changes
- Flag any dietary conflicts with active medications or supplements
