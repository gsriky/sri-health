# Research Document Standards

## Output Template

Every research document must follow this structure:

```markdown
# [Topic] Research

**Date**: YYYY-MM-DD
**Last Updated**: YYYY-MM-DD
**Purpose**: [Why this research was initiated]
**Relevance**: [Connection to Sri's biomarkers/conditions]

---

## Table of Contents

1. [Mechanism of Action](#1-mechanism-of-action)
2. [Clinical Evidence](#2-clinical-evidence)
3. [Dosage Protocols](#3-dosage-protocols)
4. [Safety & Side Effects](#4-safety--side-effects)
5. [Product Recommendations](#5-product-recommendations)
6. [Personalized Assessment](#6-personalized-assessment)
7. [Sources](#7-sources)

---

## 1. Mechanism of Action

### 1.1 Primary Mechanism
[Description with molecular pathway details and citations]

### 1.2 Secondary Mechanisms
[Additional pathways, downstream effects]

---

## 2. Clinical Evidence

### 2.1 [Outcome Category - e.g., "Glucose Reduction"]

**Study**: [Author et al., Journal, Year]
**Design**: [RCT/meta-analysis/cohort], N=[sample size], Duration=[weeks/months]
**Population**: [healthy adults/T2DM patients/etc.]
**Intervention**: [dose, form, frequency]
**Findings**: [Primary outcome with effect size, CI, p-value]
**PMID**: [link to PubMed]

[Repeat for each relevant study. Minimum 3 studies per topic.]

### 2.2 [Next Outcome Category]
[Same structure]

---

## 3. Dosage Protocols

| Indication | Dose | Form | Timing | Duration | Evidence Level |
|-----------|------|------|--------|----------|----------------|
| [Use case] | [mg/day] | [capsule/powder/etc.] | [with meals/empty stomach] | [weeks] | [RCT/meta-analysis] |

### Dosage Notes
- Titration recommendations
- Bioavailability considerations (absorption enhancers, inhibitors)
- Form-specific differences (e.g., citrate vs oxide)

---

## 4. Safety & Side Effects

### 4.1 Common Side Effects
- [Side effect] - [frequency if known] - [severity]

### 4.2 Serious/Rare Side Effects
- [Side effect] - [conditions for concern]

### 4.3 Contraindications
- [Condition or medication that contraindicates use]

### 4.4 Drug/Supplement Interactions
| Interacts With | Type | Severity | Mechanism | Recommendation |
|---------------|------|----------|-----------|----------------|
| [Drug/supplement] | [Synergistic/Antagonistic/Altered metabolism] | [Major/Moderate/Minor] | [How] | [Avoid/Monitor/Safe] |

### 4.5 Special Populations
- Pregnancy/lactation
- Children
- Elderly
- Liver/kidney impairment

---

## 5. Product Recommendations (if applicable)

### Selection Criteria
- Third-party testing (USP, NSF, ConsumerLab)
- Bioavailable form
- Clean label (minimal fillers)
- Value per serving

### Top Picks

| Rank | Product | Form | Dose/Serving | Certifications | Price/Day | Notes |
|------|---------|------|-------------|----------------|-----------|-------|
| 1 | [Name] | [Type] | [Amount] | [Certs] | [$X.XX] | [Why #1] |

---

## 6. Personalized Assessment

### Relevance to Sri's Biomarkers
[Cross-reference with latest blood work results]

### Interaction with Current Stack
[Check against current supplements and medications]

### Recommendation
[Specific recommendation: start/avoid/monitor, with rationale]

---

## 7. Sources

[Full citations with PMID links, ordered by relevance]

- Author(s). Title. *Journal*. Year;Volume(Issue):Pages. [PMID: XXXXXXXX](https://pubmed.ncbi.nlm.nih.gov/XXXXXXXX/)
```

## Quality Checklist

Before saving any research document, verify:

- [ ] Minimum 3 peer-reviewed citations
- [ ] At least one RCT or meta-analysis cited (if available for the topic)
- [ ] Effect sizes and confidence intervals reported where available
- [ ] Dosage backed by clinical evidence, not marketing claims
- [ ] Interactions checked against Sri's current supplement stack
- [ ] Evidence quality explicitly rated for each key claim
- [ ] Safety section includes contraindications and interactions
- [ ] Personalized assessment references Sri's specific biomarkers
- [ ] All PMID links are functional
- [ ] Date and purpose header completed

## Evidence Hierarchy

Rate sources using this hierarchy (strongest to weakest):

| Level | Type | Weight |
|-------|------|--------|
| 1 | Systematic reviews / meta-analyses | Strongest |
| 2 | Randomized controlled trials (RCTs) | Strong |
| 3 | Cohort studies | Moderate |
| 4 | Case-control studies | Moderate-Weak |
| 5 | Case reports / case series | Weak |
| 6 | Expert opinion / traditional use | Weakest |

## Citation Format

Standard format for all citations:
```
Author(s). Title. *Journal*. Year;Volume(Issue):Pages. [PMID: XXXXXXXX](https://pubmed.ncbi.nlm.nih.gov/XXXXXXXX/)
```

For non-PubMed sources:
```
Author(s). Title. *Source*. Year. [Link](URL)
```

## File Naming Convention

- Research files: `research/{topic}-research.md` (hyphenated, lowercase)
- Comparison files: `research/{optionA}-vs-{optionB}-comparison.md`
- Update: append to existing file with `## Updates - YYYY-MM-DD` section
