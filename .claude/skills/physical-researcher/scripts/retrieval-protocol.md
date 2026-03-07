# Retrieval Protocol

Step-by-step procedures for each action type.

## Retrieval Triggers

| Trigger | Action | Sources to Check |
|---------|--------|-----------------|
| New research request | Full research workflow | All primary databases |
| Program design | Evidence-based programming | ACSM, NSCA, PubMed, ExRx |
| Calorie/MET query | Energy expenditure lookup | MET Compendium, PubMed |
| Routine analysis | Compare to guidelines | ACSM, NSCA, current evidence |
| Compare request | Multi-topic parallel research | All primary databases |
| Update request | Date-filtered search | PubMed, ACSM, NSCA |
| Cache >30 days for topic | Suggest update to user | PubMed for new studies |

## Procedure 1: Full Research

### Phase A: Preparation
1. Read `knowledge-cache.md` -- check if topic exists
2. Glob `research/*{topic}*` -- check for existing file
3. If found: inform user, suggest `update` action instead
4. Read latest biomarker data from `biomarkers/` (most recent blood work)
5. Read exercise protocols from `protocols/` (current programming)

### Phase B: Primary Search (parallel)
Execute these searches simultaneously:
```
WebSearch: "[topic] exercise systematic review meta-analysis"
WebSearch: "[topic] training protocol evidence-based randomized controlled trial"
WebSearch: "[topic] ACSM NSCA guidelines position stand"
WebSearch: "[topic] dose-response physical activity"
```

### Phase C: Deep Retrieval
Based on Phase B results:
```
WebFetch: [Top PubMed meta-analysis URL]
  Prompt: "Extract study design, N, interventions, primary outcomes, effect sizes, conclusion"
WebFetch: [ACSM/NSCA position stand if relevant]
  Prompt: "Extract key recommendations, evidence grades, practical guidelines"
WebFetch: [ExRx or practical source]
  Prompt: "Extract exercise descriptions, programming variables, practical application"
WebFetch: [Additional high-quality source]
  Prompt: "Extract relevant evidence, dosage, safety information"
```

### Phase D: Synthesis
1. Organize findings by category (mechanism, evidence, programming, safety)
2. Ensure minimum 3 peer-reviewed citations
3. Calculate evidence quality rating
4. Cross-reference with Sri's biomarkers and current protocols
5. Include MET-based energy expenditure estimates where applicable
6. Note any conflicts between sources and weight by evidence hierarchy

### Phase E: Output
1. Check with Glob that file doesn't already exist
2. Write document to `research/[topic]-exercise-research.md`
3. Append entry to `knowledge-cache.md`
4. Present summary to user

### Phase F: Self-Update
1. Check if findings change any core knowledge in SKILL.md
2. If new guideline version: Update SKILL.md foundational guidelines
3. If new MET data: Update SKILL.md MET table
4. If new source discovered: Add to sources.md
5. If better query found: Update query templates in sources.md

## Procedure 2: Program Design

### Step 1: Gather Requirements
Determine from user:
- Goal (strength, hypertrophy, fat loss, endurance, longevity, sport)
- Experience level (beginner, intermediate, advanced)
- Available time (days/week, minutes/session)
- Equipment access (gym, home, minimal)
- Current fitness level
- Injuries or limitations
- Age and health context (from biomarkers/)

### Step 2: Evidence Lookup
```
Read: knowledge-cache.md (relevant cached research)
Glob: research/*{goal}* (existing research)
```
If needed, search:
```
WebSearch: "[goal] exercise program evidence-based"
WebSearch: "[goal] training volume frequency intensity optimal"
```

### Step 3: Design Program
Apply ACSM FITT-VP framework:
- **Frequency**: Days per week per modality
- **Intensity**: %1RM, RPE, HR zone, pace
- **Time**: Session duration
- **Type**: Exercise selection (compound > isolation for efficiency)
- **Volume**: Total sets x reps, weekly volume per muscle group
- **Progression**: Weekly/monthly advancement plan

### Step 4: Calculate Energy
- Estimate calories burned per session using MET values
- Estimate weekly total exercise energy expenditure
- Context: relationship to TDEE and body composition goals

### Step 5: Integrate Longevity Framework
Cross-reference with Peter Attia's Four Pillars:
- Stability component included?
- Zone 2 aerobic base sufficient (3-4 hrs/week)?
- VO2max work included (1-2 sessions/week)?
- Strength for functional capacity (Centenarian Decathlon)?

### Step 6: Present
Format as actionable weekly schedule with all variables specified.

## Procedure 3: Energy Expenditure

### Step 1: Identify Activity
Parse activity name and parameters (intensity, duration, body weight).

### Step 2: Lookup MET Value
1. Check SKILL.md MET table first
2. If not found:
   ```
   WebFetch: https://pacompendium.com/
     Prompt: "Find the MET value for [activity] at [intensity level]"
   ```
3. Use corrected MET if available for the individual

### Step 3: Calculate
```
Calories = MET x Weight(kg) x Duration(hours)
```
Provide:
- Per-session calories
- Per-week estimate if routine
- Comparison to equivalent activities
- Context within TDEE

### Step 4: Update
If new MET values found, update the SKILL.md reference table.

## Procedure 4: Routine Analysis

### Step 1: Parse Routine
Extract from user input:
- Exercises, sets, reps, intensity
- Frequency per body part/movement
- Cardio modalities and duration
- Recovery structure

### Step 2: Evaluate
Compare against evidence-based benchmarks:

| Dimension | Benchmark | Source |
|-----------|-----------|-------|
| Weekly volume (hypertrophy) | 10-20 sets/muscle | Schoenfeld et al. 2017 |
| Frequency per muscle | 2x/week minimum | Schoenfeld et al. 2016 |
| Intensity (strength) | >85% 1RM for maximal strength | NSCA |
| Aerobic volume | 150-300 min/week moderate | PA Guidelines |
| Zone 2 | 3-4 hrs/week | Attia framework |
| VO2max work | 1-2 sessions/week | Attia framework |
| Stability | Daily 5-10 min blocks | Attia framework |
| Rest between sets | 2-5 min (strength), 60-90s (hypertrophy) | ACSM |
| Deload frequency | Every 4-8 weeks | General practice |

### Step 3: Identify Gaps
- Missing movement patterns (push, pull, hinge, squat, carry, rotation)
- Insufficient volume for specific muscles
- Lack of progressive overload plan
- Inadequate recovery
- Missing cardio component
- No mobility work

### Step 4: Recommend
Provide specific, actionable improvements with citations.

## Procedure 5: Comparison

### Step 1: Parse Options
Extract exercise modalities, programs, or methods to compare.

### Step 2: Gather Data (parallel)
For each option, either:
- Read existing research file (if available)
- Execute abbreviated research workflow (Phase B+C from Procedure 1)

### Step 3: Build Comparison
| Dimension | Option A | Option B |
|-----------|----------|----------|
| Physiological mechanism | | |
| Efficacy (effect size) | | |
| Evidence quality | | |
| Time efficiency | | |
| Injury risk | | |
| Adherence/enjoyment | | |
| Equipment needed | | |
| Relevance to Sri's goals | | |

### Step 4: Save
Write to `research/[optionA]-vs-[optionB]-comparison.md` or present inline.

## Procedure 6: Update Existing Research

### Step 1: Load Current State
```
Glob: research/*{topic}*
Read: [matching research file]
Read: knowledge-cache.md (find last research date)
```

### Step 2: Search for New Evidence
```
WebSearch: "[topic] exercise new research [current_year]"
WebSearch: "[topic] meta-analysis systematic review [current_year]"
WebSearch: "[topic] guidelines update [current_year]"
```

### Step 3: Identify Changes
Compare new findings to existing document:
- New studies with significant results
- Updated guidelines or position stands
- Changed recommendations
- New safety concerns
- Updated MET values

### Step 4: Update Files
```
Edit: research/[topic]-exercise-research.md (add "## Updates - YYYY-MM-DD" section)
Edit: knowledge-cache.md (update last research date)
```

### Step 5: Self-Update
If findings change core knowledge:
```
Edit: SKILL.md (update relevant section)
Edit: sources.md (add new sources if discovered)
```

## Error Handling

### Source Unavailable
1. Try next source from priority list in sources.md
2. Use WebSearch as universal fallback
3. Note in output which sources were unavailable
4. Never fabricate citations -- only cite what was actually retrieved

### Conflicting Evidence
1. Present both sides with study details
2. Weight by evidence hierarchy (meta-analysis > RCT > observational)
3. Note the conflict explicitly
4. Prefer larger, more recent, better-designed studies
5. Consider population specificity (trained vs untrained, age, sex)

### Insufficient Evidence
1. State clearly that evidence is limited
2. Note what evidence exists (even if weak)
3. Identify what studies would be needed
4. Provide expert consensus if available (ACSM, NSCA position stands)
5. Recommend caution and professional consultation
