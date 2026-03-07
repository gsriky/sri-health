# Scientific Sources Configuration

## Source Priority & Reliability

| Priority | Source | Reliability | Update Frequency | Content Type | URL |
|----------|--------|-------------|------------------|--------------|-----|
| 1 | PubMed / PMC | Authoritative | Daily | Peer-reviewed articles | pubmed.ncbi.nlm.nih.gov |
| 2 | ACSM | Authoritative (guidelines) | Annual | Position stands, guidelines | acsm.org |
| 3 | NSCA | Authoritative (S&C) | Monthly | JSCR, SCJ articles | nsca.com |
| 4 | Cochrane Library | Gold standard (reviews) | Monthly | Systematic reviews | cochranelibrary.com |
| 5 | WHO | Authoritative (global) | Periodic | Global PA guidelines | who.int |
| 6 | MET Compendium | Authoritative (energy) | ~5 years | Activity MET values | pacompendium.com |
| 7 | ExRx.net | High (exercise DB) | Weekly | Exercise library, calculators | exrx.net |
| 8 | Examine.com | High (evidence-based) | Weekly-Monthly | Exercise & nutrition evidence | examine.com |
| 9 | NASM | High (education) | Monthly | CPT resources, articles | nasm.org |
| 10 | ACE | High (education) | Monthly | Fitness research, articles | acefitness.org |
| 11 | Google Scholar | Variable (aggregator) | Real-time | Academic papers | scholar.google.com |
| 12 | ScienceDirect | High (Elsevier) | Daily | Journal articles | sciencedirect.com |
| 13 | Sports Medicine (journal) | Authoritative | Monthly | Reviews, original research | springer.com |
| 14 | BJSM | Authoritative | Monthly | Sports medicine research | bjsm.bmj.com |
| 15 | Stronger by Science | High (applied) | Weekly | Evidence-based analysis | strongerbyscience.com |
| 16 | Renaissance Periodization | High (applied) | Weekly | Hypertrophy, programming | rpstrength.com |

## Query Templates

### Exercise Research

**PubMed queries** (use in WebSearch with `site:pubmed.ncbi.nlm.nih.gov`):
```
"[topic] exercise systematic review meta-analysis"
"[topic] resistance training randomized controlled trial"
"[topic] aerobic exercise intervention humans"
"[topic] physical activity dose-response"
"[topic] exercise prescription ACSM guidelines"
"[topic] training adaptation mechanism"
"[topic] injury prevention exercise"
```

**Direct URL patterns**:
```
PubMed search: https://pubmed.ncbi.nlm.nih.gov/?term=[topic]+exercise+review
ACSM: https://acsm.org/education-resources/trending-topics-resources/
NSCA JSCR: https://journals.lww.com/nsca-jscr/
ExRx: https://exrx.net/Lists/Directory
MET Compendium: https://pacompendium.com/
Examine: https://examine.com/categories/exercise/
Cochrane: https://www.cochranelibrary.com/search?searchBy=6&searchText=[topic]+exercise
```

### Energy Expenditure

**WebSearch queries**:
```
"[activity] MET value metabolic equivalent"
"[activity] calories burned per minute"
"[activity] energy expenditure research"
"compendium physical activities [activity] MET"
```

**Direct URL patterns**:
```
MET Calculator: https://metscalculator.com/
PA Compendium: https://pacompendium.com/
Compendium Calculator: https://pacompendium.com/compendium-calculator/
```

### Strength Training

**WebSearch queries**:
```
"[exercise/method] hypertrophy systematic review"
"[exercise/method] strength gains meta-analysis"
"[topic] resistance training volume intensity frequency"
"[exercise] EMG activation muscle"
"[program] periodization effectiveness RCT"
```

**Direct URL patterns**:
```
ExRx Exercise Directory: https://exrx.net/Lists/Directory
ExRx Encyclopedias: https://exrx.net/Lists/ExList/[BodyPart]Wt
Stronger by Science: https://www.strongerbyscience.com/
```

### Cardiovascular / Endurance

**WebSearch queries**:
```
"[topic] cardiovascular exercise meta-analysis"
"zone 2 training aerobic base research"
"VO2max training protocol evidence"
"HIIT vs steady state cardio systematic review"
"[topic] heart rate training zones effectiveness"
```

### Body Composition

**WebSearch queries**:
```
"[topic] body composition exercise intervention"
"resistance training fat loss lean mass preservation"
"caloric deficit exercise muscle retention"
"body recomposition evidence research"
"DEXA body composition exercise"
```

### Flexibility / Mobility

**WebSearch queries**:
```
"[topic] stretching flexibility systematic review"
"foam rolling myofascial release evidence"
"dynamic vs static stretching performance"
"mobility exercise range of motion"
```

### Recovery

**WebSearch queries**:
```
"exercise recovery methods evidence"
"sleep exercise recovery systematic review"
"HRV monitoring training readiness"
"deload training performance supercompensation"
"overtraining syndrome markers prevention"
```

### Injury Prevention

**WebSearch queries**:
```
"[body part] injury prevention exercise"
"[injury type] rehabilitation exercise protocol"
"prehabilitation [joint/area] evidence"
"movement screening injury prediction"
```

### Guidelines / Updates

**WebSearch queries** (add year filter):
```
"ACSM guidelines exercise [current_year]"
"physical activity guidelines update [current_year]"
"exercise science new research findings [current_year]"
"[topic] position stand [current_year]"
```

## Rate Limiting Guidelines

Per research session:
- Maximum 8 WebSearch calls
- Maximum 10 WebFetch calls
- Batch related queries where possible
- Prefer parallel execution for independent searches

## Source-Specific Notes

### PubMed
- Always extract: PMID, study design, N, primary outcome, effect size, journal
- Use `site:pubmed.ncbi.nlm.nih.gov` in WebSearch for targeted results
- Individual article URL: `https://pubmed.ncbi.nlm.nih.gov/[PMID]/`
- Prefer meta-analyses and RCTs over observational studies

### ACSM
- Position stands are gold standard for exercise guidelines
- GETP (Guidelines for Exercise Testing and Prescription) = primary reference
- Current edition: 12th (2025)
- Resource library: acsm.org/resource-library/

### NSCA
- JSCR (Journal of Strength and Conditioning Research): Primary research journal
- SCJ (Strength and Conditioning Journal): Practical application
- Position statements on specific topics (youth training, etc.)

### MET Compendium (pacompendium.com)
- 2024 Adult Compendium: 1,114 activities, 22 categories
- Corrected METs available for more accurate individual estimates
- New: Compendium for Older Adults (age-adjusted METs)
- New: Wheelchair Activities Compendium

### ExRx.net
- 2,100+ exercises with video demonstrations
- Muscle activation analysis
- Programming calculators (1RM, volume, etc.)
- Referenced in ACSM Resource Manual
- Content licensing available via API

### Cochrane
- Plain language summaries freely available
- 150+ systematic reviews covering 54+ health conditions with exercise
- Highest evidence standard for systematic reviews

### Stronger by Science
- Greg Nuckols' evidence-based analysis
- Monthly research reviews (MASS)
- Practical interpretation of strength/hypertrophy research
- Free training programs backed by evidence
