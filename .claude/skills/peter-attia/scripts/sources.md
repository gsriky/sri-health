# Peter Attia Content Sources

This file defines all official sources for Peter Attia's content, publications, and updates.
Used by the skill for runtime retrieval of latest information.

## Local Sources (Priority 0 - Check First)

### 0. Outlive Book (LOCAL ASSET)
- **Path**: `../assets/Outlive_ The Science and Art of Longevity by Peter Attia/input.md`
- **Content Type**: Full book text in markdown (~1.4MB)
- **Update Frequency**: STATIC (published March 2023)
- **Retrieval Priority**: HIGHEST (for core concepts)

#### When to Use Local Book
- Questions about Medicine 3.0 core framework
- The Four Horsemen of chronic disease
- Centenarian Decathlon concept
- Detailed scientific reasoning behind protocols
- ApoB causality and cardiovascular risk
- Exercise as longevity drug reasoning
- Sleep science foundations
- Emotional health chapter

#### Book Contents
| Chapter | Topic | Use For |
|---------|-------|---------|
| 1-3 | Medicine 3.0 Framework | Core philosophy, paradigm shift |
| 4-5 | Centenarians & Caloric Restriction | Longevity research |
| 6 | Metabolic Health | Insulin resistance, glucose |
| 7 | Cardiovascular | ApoB, heart disease, lipids |
| 8 | Cancer | Screening, prevention |
| 9 | Neurodegeneration | Alzheimer's, APOE, brain health |
| 10 | Tactical Framework | Implementation approach |
| 11-13 | Exercise | Zone 2, VO2max, stability, Centenarian Decathlon |
| 14-15 | Nutrition | CR/TR/DR framework, protein |
| 16 | Sleep | Sleep optimization |
| 17 | Emotional Health | Mental health integration |

#### How to Reference
```
Read: ../assets/Outlive_ The Science and Art of Longevity by Peter Attia/input.md
```
Use Grep to search for specific topics within the book.

---

## Web Sources (for updates and latest information)

### 1. Official Website
- **URL**: https://peterattiamd.com
- **Content Type**: Articles, blog posts, research summaries
- **Update Frequency**: Weekly
- **Retrieval Priority**: HIGH

#### Key Sections
| Section | URL | Content |
|---------|-----|---------|
| Blog/Articles | https://peterattiamd.com/blog/ | Latest articles and insights |
| Podcast Episodes | https://peterattiamd.com/podcast/ | Episode show notes and transcripts |
| AMA Episodes | https://peterattiamd.com/ama/ | Ask Me Anything subscriber episodes |
| Topic Guides | https://peterattiamd.com/topic-guide/ | Curated topic deep-dives |

#### Topic-Specific Pages
| Topic | URL |
|-------|-----|
| Zone 2 Training | https://peterattiamd.com/category/exercise/aerobic-zone-2-training/ |
| Cardiovascular | https://peterattiamd.com/category/diseases/cardiovascular-disease/ |
| Cancer | https://peterattiamd.com/category/diseases/cancer-prevention/ |
| Metabolic Health | https://peterattiamd.com/category/risks/insulin-resistance/ |
| Sleep | https://peterattiamd.com/category/sleep/ |
| Mental Health | https://peterattiamd.com/category/mental-health/ |
| Neurodegenerative | https://peterattiamd.com/category/risks/neurodegenerative-disease-prevention/ |
| Fasting | https://peterattiamd.com/category/nutritional-biochemistry/fasting/ |

### 2. The Drive Podcast
- **Platform**: All major podcast platforms
- **Feed URL**: https://peterattiamd.com/feed/podcast/
- **Content Type**: Long-form expert interviews, AMA episodes
- **Update Frequency**: Weekly (typically)
- **Retrieval Priority**: HIGH

#### Episode Types
- **Regular Episodes**: 2-3 hour deep dives with experts
- **AMA Episodes**: Subscriber Q&A (numbered #XX)
- **Qualy Episodes**: Short highlight clips

### 3. Social Media

#### Twitter/X
- **Handle**: @PeterAttiaMD
- **URL**: https://twitter.com/PeterAttiaMD
- **Content Type**: Quick insights, announcements, thread discussions
- **Retrieval Priority**: MEDIUM

#### YouTube
- **Channel**: Peter Attia MD
- **URL**: https://www.youtube.com/@PeterAttiaMD
- **Content Type**: Podcast clips, educational videos
- **Retrieval Priority**: MEDIUM

#### Instagram
- **Handle**: @peterattiamd
- **URL**: https://www.instagram.com/peterattiamd/
- **Content Type**: Visual content, announcements
- **Retrieval Priority**: LOW

### 4. Book: Outlive
- **Title**: Outlive: The Science and Art of Longevity
- **Published**: March 2023
- **Publisher**: Harmony Books
- **ISBN**: 978-0593236598
- **Content Type**: Comprehensive Medicine 3.0 framework
- **Note**: Static content, core reference

## Secondary Sources (Appearances)

### Podcasts Appearances
Peter Attia frequently appears on other podcasts. Key appearances:
- Huberman Lab
- Found My Fitness (Rhonda Patrick)
- Tim Ferriss Show
- Joe Rogan Experience
- Lex Fridman Podcast

### Media Coverage
- Men's Health
- New York Times
- 60 Minutes (October 2025)

## Retrieval Configuration

### Search Queries by Topic

```yaml
cardiovascular:
  queries:
    - "Peter Attia ApoB latest recommendations"
    - "Peter Attia cardiovascular disease prevention 2025 2026"
    - "Peter Attia lipid management protocol"
  urls:
    - https://peterattiamd.com/category/diseases/cardiovascular-disease/

metabolic:
  queries:
    - "Peter Attia insulin resistance glucose"
    - "Peter Attia metabolic health CGM"
    - "Peter Attia type 2 diabetes prevention"
  urls:
    - https://peterattiamd.com/category/risks/insulin-resistance/

exercise:
  queries:
    - "Peter Attia zone 2 training protocol"
    - "Peter Attia VO2max training"
    - "Peter Attia exercise longevity"
  urls:
    - https://peterattiamd.com/category/exercise/aerobic-zone-2-training/
    - https://peterattiamd.com/category/exercise/

sleep:
  queries:
    - "Peter Attia sleep optimization protocol"
    - "Peter Attia sleep recommendations"
  urls:
    - https://peterattiamd.com/category/sleep/

cancer:
  queries:
    - "Peter Attia cancer screening early detection"
    - "Peter Attia cancer prevention protocol"
  urls:
    - https://peterattiamd.com/category/diseases/cancer-prevention/

brain:
  queries:
    - "Peter Attia Alzheimer's prevention cognitive decline"
    - "Peter Attia brain health APOE"
  urls:
    - https://peterattiamd.com/category/risks/neurodegenerative-disease-prevention/

nutrition:
  queries:
    - "Peter Attia nutrition diet fasting"
    - "Peter Attia protein recommendations"
  urls:
    - https://peterattiamd.com/category/nutritional-biochemistry/

general:
  queries:
    - "Peter Attia latest podcast episode 2025 2026"
    - "Peter Attia new research findings"
    - "Peter Attia protocol updates"
  urls:
    - https://peterattiamd.com/
    - https://peterattiamd.com/podcast/
```

### Update Triggers

The skill should perform retrieval when:
1. User explicitly asks for updates (`/peter-attia update`)
2. User asks about recent findings or "latest" information
3. Topic-specific query that could benefit from current data
4. Biomarker analysis where recent protocol changes may apply

### Rate Limiting

- **WebSearch**: No more than 3 searches per query session
- **WebFetch**: No more than 5 page fetches per query session
- **Cache Duration**: Store fetched insights for 7 days before re-fetch

## Content Quality Indicators

When evaluating fetched content, prioritize:
1. **Primary source** (peterattiamd.com) over secondary
2. **Recent content** (within last 6 months) for protocol updates
3. **Podcast episodes** for detailed explanations
4. **AMA episodes** for practical Q&A answers
5. **Topic guides** for comprehensive overviews

## API Notes

### No Official API
Peter Attia's website does not have a public API. Retrieval is done via:
- Web scraping (WebFetch)
- Web search (WebSearch)
- RSS feed parsing (podcast feed)

### Subscription Content
Some content (full AMA transcripts, member articles) requires subscription.
Skill should note when information may be from subscriber-only content.
