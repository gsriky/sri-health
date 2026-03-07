# Supplements Registry

This registry contains detailed information about each supplement.

## Structure

Each item in the registry follows this structure:

```
registry/
├── CLAUDE.md              # This file (instructions + index)
└── [item-name]/
    ├── [item-name].md     # Facts, dosing, evidence, notes
    └── screenshots/       # Labels, packaging, research screenshots
```

## Naming Convention

- Use lowercase with hyphens: `vitamin-d3`, `magnesium-l-threonate`
- For branded products, use brand name: `ksm-66-ashwagandha`, `mag-plus`

## Item File Template

Each `[item-name].md` should include:

```markdown
[← Back to Index](../../INDEX.md)

# [Item Name]

**Category**: Supplement
**Status**: Active | Paused | Discontinued
**Started**: YYYY-MM-DD

## Overview

Brief description and purpose.

## Dosing

- **Dose**:
- **Timing**:
- **With/Without Food**:

## Evidence

Key research and rationale.

## Monitoring

What to track and when.

## Notes

Personal observations, adjustments, etc.

## References

Links to studies, product pages, etc.
```

---

## Index

### Supplements

| Name                                                                                   | Status | Dose                            | Purpose                                       |
| -------------------------------------------------------------------------------------- | ------ | ------------------------------- | --------------------------------------------- |
| [Cortisol Calm](cortisol-calm/cortisol-calm.md)                                        | Active | 1 cap @ 5pm                     | Cortisol/stress support                       |
| [Whey Protein Concentrate](whey-protein-itsjust/whey-protein-itsjust.md)               | Active | 1 scoop AM                      | Protein intake                                |
| [Creatine](creatine-thorne/creatine-thorne.md)                                         | Active | 5g AM                           | Muscle/cognitive support                      |
| [Omega-3 (Metagenics)](omega-3-metagenics/omega-3-metagenics.md)                       | Active | 1 softgel @ Lunch               | Omega-3 optimization                          |
| [Probiotic (NATURELO)](probiotic-naturelo/probiotic-naturelo.md)                       | Active | 1 cap @ 30 min before breakfast | Gut health, urticaria support                 |
| [Berberine (Integrative Therapeutics)](berberine-integrative/berberine-integrative.md) | Active | 500mg 2-3x daily w/ meals       | Insulin resistance, LDL particle optimization |
| [Berberine (Thorne)](berberine-thorne/berberine-thorne.md)                             | Active | 1-2 caps 2x daily w/ meals      | Insulin resistance, LDL particle optimization |

---

## Adding New Items

1. Create folder: `registry/[item-name]/`
2. Create file: `registry/[item-name]/[item-name].md`
3. Create folder: `registry/[item-name]/screenshots/`
4. Update this index

## AI Instructions

When working with this registry:

- Always update the index when adding/removing items
- Cross-reference with biomarkers in `../../biomarkers/`
- Note interactions with medications in `../medications/`
- Note interactions between supplements
- Flag any concerns based on current health context
