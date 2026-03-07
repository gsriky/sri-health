# Blueprint Update Retrieval Protocol

This document defines how to retrieve and cache updates from Bryan Johnson's official sources.

## Retrieval Triggers

Perform retrieval when:
1. **Explicit Request**: User invokes `/bryan-johnson update` or asks for "latest updates"
2. **Topic-Specific Query**: User asks about something that may have recent changes
3. **Staleness Check**: Knowledge cache is >30 days old
4. **Uncertainty**: Current knowledge may be outdated for the query

## Retrieval Procedure

### Step 1: Assess Query Type

| Query Type | Retrieval Needed | Sources to Check |
|------------|-----------------|------------------|
| General protocol | No | Use cached knowledge |
| Specific biomarker target | Maybe | Check if OCOR changed |
| Current supplement stack | Yes | protocol.bryanjohnson.com |
| Latest results | Yes | Multiple sources |
| Recent changes | Yes | Monthly Notes, Twitter |
| Historical data | No | Use reference files |

### Step 2: Execute Retrieval

#### For Protocol Updates
```
WebSearch: "Bryan Johnson Blueprint monthly notes 2026"
WebFetch: https://protocol.bryanjohnson.com/Monthly-Notes
```

#### For Supplement Changes
```
WebSearch: "Bryan Johnson Blueprint supplements update 2025 2026"
WebFetch: https://protocol.bryanjohnson.com/Current-Results-Diet-Supplements
```

#### For Latest Results/Biomarkers
```
WebSearch: "Bryan Johnson biological age DunedinPACE latest results"
WebSearch: "Bryan Johnson biomarkers 2026"
```

#### For News/Announcements
```
WebFetch: https://blueprint.bryanjohnson.com/blogs/news
WebSearch: "Bryan Johnson Blueprint announcement 2026"
```

#### For Real-Time Updates
```
WebSearch: "Bryan Johnson" site:x.com 2026
WebSearch: "Bryan Johnson Blueprint" latest news
```

### Step 3: Process Results

For each fetched result:

1. **Extract Key Information**
   - Protocol changes
   - New/removed supplements
   - Updated biomarker targets
   - New research findings
   - Result updates

2. **Compare to Cached Knowledge**
   - Identify what's new vs. already known
   - Flag significant changes
   - Note contradictions

3. **Validate Information**
   - Cross-reference multiple sources if possible
   - Prioritize official sources over third-party
   - Note date of information

### Step 4: Update Knowledge Cache

Append to `knowledge-cache.md`:

```markdown
### [DATE] - [SOURCE TYPE]
**Source**: [URL]
**Fetched**: [TIMESTAMP]
**Tags**: [relevant tags]

**Summary**:
[Concise summary of new information]

**Changes Detected**:
- [List specific changes]

**Impact on Recommendations**:
- [How this affects advice given]
```

### Step 5: Apply to Response

Use the new information to:
1. Answer the user's immediate question
2. Update any advice with new context
3. Note what has changed if relevant
4. Cite the source and date

## Source-Specific Retrieval

### Protocol Site (protocol.bryanjohnson.com)

**Monthly Notes**
- Primary source for official protocol changes
- Check: Supplement additions/removals, dosage changes, timing changes
- URL pattern: `/Monthly-Notes`

**Current Results**
- Latest biomarker data and supplement list
- Check: New metrics, updated values
- URL pattern: `/Current-Results-Diet-Supplements`

### Blog (blueprint.bryanjohnson.com)

**News Section**
- Official announcements, new products, research
- Check: New initiatives, partnerships, product launches
- URL pattern: `/blogs/news`

### Twitter/X (@bryan_johnson)

**Real-Time Updates**
- Daily insights, quick protocol tips, community engagement
- Check: Recent posts about protocol changes, research commentary
- Search: `from:bryan_johnson Blueprint` or `from:bryan_johnson protocol`

### YouTube (Bryan Johnson channel)

**Video Content**
- Deep explanations, new experiments, interviews
- Check: Recent uploads for new protocol content
- Search: `Bryan Johnson Blueprint` + filter by recent

## Error Handling

### If Source Unavailable
1. Try alternative source from priority list
2. Use WebSearch as fallback
3. Note in response that live data couldn't be retrieved
4. Fall back to cached knowledge with date caveat

### If Information Conflicts
1. Prioritize official sources (protocol site > blog > social)
2. Prefer more recent dates
3. Note uncertainty in response
4. Recommend user verify at source

### If No New Information
1. Confirm cache is current
2. Report that no changes detected since [date]
3. Provide answer from cached knowledge

## Retrieval Examples

### Example 1: User asks about current supplements
```
1. Check cache date - if <7 days, use cache
2. If older, WebFetch protocol site supplements page
3. Compare to cached list
4. Report any changes
5. Provide current list with fetch date
```

### Example 2: User asks "what's new in Blueprint?"
```
1. WebSearch for recent Blueprint news
2. WebFetch Monthly Notes page
3. WebFetch news blog
4. Compile changes since last cache
5. Update cache with new findings
6. Present summary of changes
```

### Example 3: User asks about specific OCOR target
```
1. Check if target might have changed (metabolic, lipid, etc.)
2. If volatile category, verify with search
3. If stable category, use cached value
4. Provide value with confidence level
```

## Performance Optimization

### Minimize Unnecessary Fetches
- Cache results for at least 24 hours for stable content
- Don't re-fetch for general questions
- Batch related queries into single fetch session

### Prioritize Speed
- For urgent questions, use cached knowledge first
- Append live verification if time permits
- Note cache date in response

### Balance Freshness vs. Reliability
- Fresh social media may be less reliable than older official sources
- Protocol site is authoritative but updates less frequently
- Use judgment based on query type
