# Peter Attia Knowledge Retrieval System

This file defines the runtime retrieval procedures for keeping Peter Attia knowledge current.

## Retrieval Philosophy

The Peter Attia skill should actively fetch the latest information when:
1. The query matches Peter Attia's specializations
2. User asks about "latest", "recent", or "current" information
3. Protocol details that may have been updated
4. Biomarker targets that evolve with new research

## Automatic Retrieval Triggers

### High-Priority Triggers (Always Fetch)
- User explicitly requests update: `/peter-attia update`
- Query contains: "latest", "recent", "new", "updated", "current", "2025", "2026"
- Topic is rapidly evolving: cardiovascular protocols, cancer screening tech

### Medium-Priority Triggers (Fetch if cache >7 days old)
- Specific protocol questions (Zone 2, ApoB targets, etc.)
- Biomarker interpretation requests
- Treatment/intervention recommendations

### Low-Priority Triggers (Use cached knowledge)
- General framework questions (Medicine 3.0 concepts)
- Historical information (Attia's background, book content)
- Established principles that rarely change

## Retrieval Procedures

### Procedure 1: General Update Fetch

When `/peter-attia update` is invoked:

```
1. WebSearch: "Peter Attia latest podcast episode 2025 2026"
2. WebSearch: "Peter Attia new research protocol updates"
3. WebFetch: https://peterattiamd.com/
   Prompt: "Extract the latest articles, podcast episodes, and any protocol updates mentioned on this page"
4. WebFetch: https://peterattiamd.com/podcast/
   Prompt: "List the 5 most recent podcast episodes with their topics and key guests"
5. Summarize findings
6. Update knowledge-cache.md with new insights
```

### Procedure 2: Topic-Specific Retrieval

When query matches a specialization, fetch targeted content:

#### Cardiovascular / ApoB
```
1. WebSearch: "Peter Attia ApoB recommendations 2025 2026"
2. WebFetch: https://peterattiamd.com/category/diseases/cardiovascular-disease/
   Prompt: "Extract the latest recommendations for ApoB targets, lipid management, and cardiovascular disease prevention"
3. Check for any changes from baseline targets (<60 ceiling, <40 optimal)
4. Update cardiovascular section in knowledge-cache.md
```

#### Metabolic Health / Insulin
```
1. WebSearch: "Peter Attia insulin resistance glucose management 2025 2026"
2. WebFetch: https://peterattiamd.com/category/risks/insulin-resistance/
   Prompt: "Extract latest recommendations for metabolic health, CGM use, and insulin sensitivity"
3. Update metabolic section in knowledge-cache.md
```

#### Exercise / Zone 2 / VO2max
```
1. WebSearch: "Peter Attia zone 2 VO2max training protocol 2025 2026"
2. WebFetch: https://peterattiamd.com/category/exercise/aerobic-zone-2-training/
   Prompt: "Extract current Zone 2 training recommendations, weekly volume, and any protocol updates"
3. Update exercise section in knowledge-cache.md
```

#### Sleep
```
1. WebSearch: "Peter Attia sleep optimization 2025 2026"
2. WebFetch: https://peterattiamd.com/category/sleep/
   Prompt: "Extract current sleep recommendations, supplements, and environment optimization tips"
3. Update sleep section in knowledge-cache.md
```

#### Cancer Screening
```
1. WebSearch: "Peter Attia cancer screening early detection 2025 2026"
2. WebFetch: https://peterattiamd.com/category/diseases/cancer-prevention/
   Prompt: "Extract current cancer screening recommendations, new technologies discussed, and protocol updates"
3. Update cancer section in knowledge-cache.md
```

#### Brain Health / Alzheimer's
```
1. WebSearch: "Peter Attia Alzheimer's prevention cognitive decline 2025 2026"
2. WebFetch: https://peterattiamd.com/category/risks/neurodegenerative-disease-prevention/
   Prompt: "Extract current recommendations for cognitive health, Alzheimer's prevention, and any new research"
3. Update brain health section in knowledge-cache.md
```

### Procedure 3: Podcast Episode Fetch

When needing specific episode insights:
```
1. WebSearch: "Peter Attia podcast [topic] [guest name if known]"
2. WebFetch the episode page
   Prompt: "Extract key insights, recommendations, and actionable takeaways from this episode"
3. Add episode summary to knowledge-cache.md
```

## Knowledge Update Protocol

After each retrieval:

1. **Compare to baseline**: Check if new info differs from skill's built-in knowledge
2. **Validate source**: Ensure information is from official Peter Attia sources
3. **Date stamp**: Record when information was fetched
4. **Categorize**: Place in appropriate section of knowledge-cache.md
5. **Flag changes**: Note any significant protocol changes or updated recommendations

### Update Format

When adding to knowledge-cache.md:
```markdown
## [Category] - Updated [YYYY-MM-DD]

### Source
- URL: [source URL]
- Type: [podcast/article/social]
- Date Published: [if known]

### Key Updates
- [Bullet points of new information]

### Changes from Baseline
- [Note any differences from built-in skill knowledge]

### Actionable Insights
- [Practical takeaways]
```

## Specialization Matching

The skill should detect when a user query matches Peter Attia's specializations and trigger appropriate retrieval.

### Keyword Detection

| Specialization | Trigger Keywords |
|---------------|------------------|
| Cardiovascular | ApoB, Lp(a), LDL, cholesterol, heart disease, ASCVD, lipids, statin |
| Metabolic | insulin, glucose, HbA1c, CGM, diabetes, metabolic, OGTT |
| Exercise | zone 2, VO2max, exercise, training, strength, centenarian decathlon |
| Sleep | sleep, insomnia, circadian, melatonin, magnesium threonate |
| Cancer | cancer, screening, MRI, liquid biopsy, early detection, Galleri |
| Brain | Alzheimer's, dementia, cognitive, APOE, brain health, neurodegeneration |
| Nutrition | fasting, protein, diet, nutrition, caloric restriction |
| Emotional | therapy, mental health, emotional health, stress, DBT |

### Context Detection

Beyond keywords, detect context that suggests Peter Attia relevance:
- Discussion of longevity biomarkers
- Questions about optimal (not just reference) ranges
- Exercise programming for health vs aesthetics
- Preventive medicine approaches
- Discussion of "Outlive" or Medicine 3.0

## Error Handling

### If WebFetch fails:
1. Fall back to WebSearch for the topic
2. Use cached knowledge with note about fetch failure
3. Recommend user visit source directly

### If information conflicts:
1. Prefer more recent information
2. Note the conflict in response
3. Provide both perspectives if significant
4. Recommend verification from primary source

### If no new information found:
1. Confirm baseline knowledge is still current
2. Note the search date
3. Provide baseline response with confidence

## Response Integration

After retrieval, integrate findings into response:

1. **Lead with current info**: Start with most recent/relevant findings
2. **Note source and date**: "According to a recent episode (December 2025)..."
3. **Compare to baseline**: "This aligns with his established recommendation of..."
4. **Flag any changes**: "Note: This is updated from his previous target of..."
5. **Provide context**: Explain why recommendations may have evolved
