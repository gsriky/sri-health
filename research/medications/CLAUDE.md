# Medications Registry

This registry contains detailed information about each prescription and OTC medication.

## Structure

Each item in the registry follows this structure:

```
medications/
├── CLAUDE.md              # This file (instructions + index)
└── [item-name]/
    ├── [item-name].md     # Facts, dosing, evidence, notes
    └── screenshots/       # Labels, packaging, research screenshots
```

## Naming Convention

- Use lowercase with hyphens: `metformin`, `levothyroxine-50mcg`
- For branded products, use brand name: `ozempic`, `synthroid`

## Item File Template

Each `[item-name].md` should include:

```markdown
[<- Back to Index](../CLAUDE.md)

# [Item Name]

**Category**: Prescription | OTC
**Status**: Active | Paused | Discontinued
**Prescriber**:
**Started**: YYYY-MM-DD

## Overview

Brief description, indication, and mechanism of action.

## Dosing

- **Dose**:
- **Timing**:
- **With/Without Food**:
- **Refill Schedule**:

## Side Effects

Known and experienced side effects.

## Interactions

Drug-drug and drug-supplement interactions.

## Monitoring

Required labs and follow-up schedule.

## Notes

Personal observations, adjustments, etc.

## References

Links to prescribing info, studies, etc.
```

---

## Index

### Prescription Medications

| Name | Status | Dose | Purpose |
| ---- | ------ | ---- | ------- |
|      |        |      |         |

### OTC Medications

| Name | Status | Dose | Purpose |
| ---- | ------ | ---- | ------- |
|      |        |      |         |

---

## Adding New Items

1. Create folder: `[item-name]/`
2. Create file: `[item-name]/[item-name].md`
3. Create folder: `[item-name]/screenshots/`
4. Update this index

## AI Instructions

When working with this registry:

- Always update the index when adding/removing items
- Cross-reference with biomarkers in `../../biomarkers/`
- Note interactions with supplements in `../supplements/`
- Flag contraindications and interaction risks
- Track prescriber and refill schedules
