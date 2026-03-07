# Retrieval Protocol

Step-by-step procedures for each action type.

## Retrieval Triggers

| Trigger | Action | Sources to Check |
|---------|--------|-----------------|
| New research request | Full research workflow | All primary databases |
| Interaction check | Targeted interaction search | Drugs.com, PubMed, existing research files |
| Update request | Date-filtered search | PubMed, Examine, Google Scholar |
| Compare request | Multi-topic parallel research | All primary databases |
| Cache >90 days for topic | Suggest update to user | PubMed for new studies |

## Procedure 1: Full Research

### Phase A: Preparation
1. Read `knowledge-cache.md` -- check if topic exists
2. Glob `research/*{topic}*` -- check for existing file
3. If found: inform user, suggest `update` action instead
4. Read `research-standards.md` -- load output template
5. Read latest biomarker data from `biomarkers/` (most recent blood work)

### Phase B: Primary Search (parallel)
Execute these searches simultaneously:
```
WebSearch: "[topic] supplementation systematic review meta-analysis"
WebSearch: "[topic] randomized controlled trial efficacy safety dosage"
WebSearch: "[topic] mechanism of action molecular pathway"
WebSearch: "site:examine.com [topic]"
```

### Phase C: Deep Retrieval
Based on Phase B results:
```
WebFetch: https://examine.com/supplements/[topic]/
  Prompt: "Extract evidence summary, dosage ranges, key studies, safety concerns"
WebFetch: [Top PubMed result URL]
  Prompt: "Extract study design, sample size, intervention, primary outcome, effect size, conclusion"
WebFetch: [Additional high-quality source]
  Prompt: "Extract relevant clinical evidence and dosage information"
```

### Phase D: Synthesis
1. Organize findings by the template in `research-standards.md`
2. Ensure minimum 3 peer-reviewed citations
3. Calculate evidence quality rating
4. Cross-reference with Sri's biomarkers for personalized assessment
5. Check interactions with current supplement stack

### Phase E: Output
1. Check with Glob that file doesn't already exist
2. Write document to `research/[topic]-research.md`
3. Append entry to `knowledge-cache.md`
4. Present summary to user

## Procedure 2: Interaction Check

### Step 1: Parse Substances
Extract substance names from arguments. Handle formats:
- "interactions berberine+metformin"
- "interactions berberine and omega-3"
- "interactions between magnesium, calcium, zinc"

### Step 2: Check Existing Knowledge
```
Glob: research/*{substance1}*
Glob: research/*{substance2}*
Read: knowledge-cache.md
```
Extract any interaction data already documented.

### Step 3: Search Interactions
```
WebSearch: "[substance1] [substance2] drug interaction"
WebSearch: "[substance1] [substance2] pharmacokinetic interaction safety"
WebFetch: drugs.com interaction checker (if available)
```

### Step 4: Cross-Reference Stack
Check Sri's current supplements/medications for compound interactions.

### Step 5: Report
Present using severity rating:
- **Major**: Avoid combination. Risk of serious adverse effects.
- **Moderate**: Use with caution. Monitor for effects.
- **Minor**: Generally safe. Minimal clinical significance.
- **None Known**: No documented interactions. Monitor as general precaution.

## Procedure 3: Update Existing Research

### Step 1: Load Current State
```
Glob: research/*{topic}*
Read: [matching research file]
Read: knowledge-cache.md (find last research date)
```

### Step 2: Search for New Evidence
```
WebSearch: "[topic] new research [current_year]"
WebSearch: "[topic] clinical trial results [current_year]"
WebSearch: "[topic] safety alert [current_year]"
```

### Step 3: Identify Changes
Compare new findings to existing document:
- New studies with significant results
- Changed dosage recommendations
- New safety concerns or alerts
- Retracted studies
- Updated meta-analyses

### Step 4: Update
```
Edit: research/[topic]-research.md (add "## Updates - YYYY-MM-DD" section)
Edit: knowledge-cache.md (update last research date)
```

## Procedure 4: Comparison

### Step 1: Parse Options
Extract substances/products to compare from arguments.

### Step 2: Gather Data (parallel)
For each option, either:
- Read existing research file (if available)
- Execute abbreviated research workflow (Phase B+C from Procedure 1)

### Step 3: Build Comparison
Create table comparing:
| Dimension | Option A | Option B |
|-----------|----------|----------|
| Mechanism | | |
| Efficacy (effect size) | | |
| Evidence quality | | |
| Safety profile | | |
| Dosage | | |
| Cost | | |
| Relevance to Sri | | |

### Step 4: Save
Write to `research/[optionA]-vs-[optionB]-comparison.md` or present inline.

## Error Handling

### Source Unavailable
1. Try next source from priority list in `sources.md`
2. Use WebSearch as universal fallback
3. Note in output which sources were unavailable
4. Never fabricate citations -- only cite what was actually retrieved

### Conflicting Evidence
1. Present both sides with study details
2. Weight by evidence hierarchy (meta-analysis > RCT > observational)
3. Note the conflict explicitly
4. Prefer larger, more recent, better-designed studies

### Insufficient Evidence
1. State clearly that evidence is limited
2. Note what evidence exists (even if weak)
3. Identify what studies would be needed
4. Recommend caution and professional consultation

## Self-Update Protocol

After completing any research action:

1. **Always**: Append to `knowledge-cache.md` with:
   ```markdown
   ### YYYY-MM-DD - [TOPIC]
   **File**: research/[topic]-research.md
   **Sources**: [databases used]
   **Key Findings**: [1-2 sentence summary]
   **Evidence Quality**: [Strong/Moderate/Weak/Preliminary]
   **Interactions Checked**: [Yes/No]
   **Tags**: [supplement|medication|intervention|comparison]
   ```

2. **If new pattern discovered**: Update `research-standards.md`
   - New useful section template discovered
   - Better citation format found
   - Additional quality check needed

3. **If new database found**: Update `source-databases.md`
   - Add new source with URL, reliability rating, and access notes
