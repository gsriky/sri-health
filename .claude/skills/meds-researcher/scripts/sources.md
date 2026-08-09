# Scientific Sources Configuration

## Source Priority & Reliability

| Priority | Source | Reliability | Update Frequency | Content Type |
|----------|--------|-------------|------------------|--------------|
| 1 | PubMed / PMC | Authoritative | Daily | Abstracts, full-text articles |
| 2 | Cochrane Library | Gold standard for reviews | Monthly | Systematic reviews |
| 3 | OpenEvidence | High (AI-synthesized clinical) | Continuous | Clinical evidence synthesis, drug/supplement summaries |
| 4 | Examine.com | High (evidence-based) | Weekly-Monthly | Supplement monographs |
| 5 | ClinicalTrials.gov | Authoritative | Daily | Trial registrations, results |
| 6 | Google Scholar | Variable (aggregator) | Real-time | Academic papers |
| 7 | ScienceDirect | High (Elsevier journals) | Daily | Journal articles |
| 8 | NIH ODS | Authoritative | Quarterly | Supplement fact sheets |
| 9 | Drugs.com | Moderate-High | Monthly | Interactions, monographs |
| 10 | ConsumerLab | High (independent testing) | Monthly | Product reviews |

## Query Templates

### Supplement Research

**PubMed queries** (use in WebSearch with `site:pubmed.ncbi.nlm.nih.gov`):
```
"[topic] supplementation systematic review meta-analysis"
"[topic] randomized controlled trial humans"
"[topic] mechanism action molecular"
"[topic] safety adverse effects dose-response"
"[topic] bioavailability pharmacokinetics"
```

**Direct URL patterns**:
```
Examine: https://examine.com/supplements/[topic]/
PubMed search: https://pubmed.ncbi.nlm.nih.gov/?term=[topic]+supplementation+review
NIH ODS: https://ods.od.nih.gov/factsheets/[Topic]-HealthProfessional/
ClinicalTrials: https://clinicaltrials.gov/search?intr=[topic]
```

### Interaction Check

**WebSearch queries**:
```
"[substance1] [substance2] interaction pharmacokinetic"
"[substance1] [substance2] drug interaction safety"
"[substance1] [substance2] concurrent use clinical"
```

**Direct URL patterns**:
```
Drugs.com: https://www.drugs.com/interactions-check.php?drug_list=[id1],[id2]
```

### Product Comparison

**WebSearch queries**:
```
"[topic] supplement best brand third party tested [current_year]"
"[topic] ConsumerLab review"
"[topic] supplement comparison quality purity"
```

### Update / New Research

**WebSearch queries** (add year filter):
```
"[topic] new research findings [current_year]"
"[topic] clinical trial results published [current_year]"
"[topic] safety alert warning [current_year]"
"[topic] meta-analysis [current_year]"
```

## Rate Limiting Guidelines

Per research session:
- Maximum 8 WebSearch calls
- Maximum 10 WebFetch calls
- Batch related queries where possible
- Prefer parallel execution for independent searches

## Source-Specific Notes

### OpenEvidence
- AI-powered clinical evidence platform built for clinicians and researchers
- Synthesizes peer-reviewed literature, clinical guidelines, and drug information into concise evidence summaries
- Best used for: quick clinical evidence synthesis, supplement/drug overviews, guideline summaries
- URL: `https://www.openevidence.com/`
- **Access**: Requires login — returns 403 to automated fetch. Claude cannot query it directly.
- **Usage**: Sri queries manually and pastes findings into conversation for analysis
- Always cross-reference OpenEvidence summaries with primary PubMed sources for PMID citations

### PubMed
- Always extract: PMID, study design, N, primary outcome, effect size, journal
- Use `site:pubmed.ncbi.nlm.nih.gov` in WebSearch for targeted results
- Individual article URL: `https://pubmed.ncbi.nlm.nih.gov/[PMID]/`
- Prefer meta-analyses and RCTs over observational studies

### Examine.com
- Free pages contain: summary of evidence, dosage ranges, key studies
- Structure: `examine.com/supplements/[topic]/` for overview
- Note when content appears truncated (paid content)

### Cochrane
- Plain language summaries are freely available
- URL pattern: `cochranelibrary.com/cdsr/doi/[DOI]`
- Highest evidence standard for systematic reviews

### ClinicalTrials.gov
- Useful for finding ongoing studies (future evidence)
- Check "Results" tab for completed trials with published data
- Filter by: Completed, Has Results, Interventional

### Google Scholar
- Good for finding full-text PDFs and preprints
- Use date range filters for recent research
- Check citation count as quality signal
