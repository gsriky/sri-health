#!/bin/bash
# fetch-huberman-updates.sh
# Fetches the latest updates from Huberman Lab sources
# Usage: ./fetch-huberman-updates.sh [--episodes] [--newsletter] [--all]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="${SCRIPT_DIR}/../data"
TIMESTAMP=$(date +%Y-%m-%d)

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

print_header() {
    echo -e "${GREEN}================================================${NC}"
    echo -e "${GREEN}  Huberman Lab Update Fetcher${NC}"
    echo -e "${GREEN}  Date: ${TIMESTAMP}${NC}"
    echo -e "${GREEN}================================================${NC}"
    echo ""
}

fetch_episodes() {
    echo -e "${YELLOW}Fetching latest podcast episodes...${NC}"

    # Fetch from Huberman Lab RSS feed (Spotify/Apple compatible)
    RSS_URL="https://feeds.megaphone.fm/hubermanlab"

    if command -v curl &> /dev/null; then
        echo "Downloading RSS feed..."
        curl -s "$RSS_URL" -o "${OUTPUT_DIR}/huberman-rss-${TIMESTAMP}.xml"

        # Extract episode titles and dates (basic parsing)
        if command -v grep &> /dev/null && command -v sed &> /dev/null; then
            echo ""
            echo -e "${GREEN}Recent Episodes:${NC}"
            grep -o '<title>[^<]*</title>' "${OUTPUT_DIR}/huberman-rss-${TIMESTAMP}.xml" | \
                sed 's/<title>//g;s/<\/title>//g' | \
                head -20
        fi

        echo ""
        echo -e "${GREEN}Full RSS saved to: ${OUTPUT_DIR}/huberman-rss-${TIMESTAMP}.xml${NC}"
    else
        echo -e "${RED}Error: curl is required but not installed${NC}"
        exit 1
    fi
}

fetch_newsletter_info() {
    echo -e "${YELLOW}Newsletter Archive Information:${NC}"
    echo ""
    echo "The Huberman Lab Newsletter (Neural Network) is available at:"
    echo "  https://www.hubermanlab.com/newsletter"
    echo ""
    echo "Newsletter archives are FREE and include:"
    echo "  - 1-3 page PDF summaries of key protocols"
    echo "  - No sign-up required for archive access"
    echo "  - Organized by topic"
    echo ""
    echo "Popular Newsletter Topics:"
    echo "  - Toolkit for Sleep"
    echo "  - Foundational Fitness Protocol"
    echo "  - Neuroplasticity Super Protocol"
    echo "  - Dopamine Optimization"
    echo "  - Focus & Productivity"
    echo "  - Cold/Heat Exposure"
    echo ""
    echo "To access: Visit hubermanlab.com/newsletter"
}

fetch_social_updates() {
    echo -e "${YELLOW}Social Media Sources:${NC}"
    echo ""
    echo "For real-time updates, check these official channels:"
    echo ""
    echo "  Twitter/X: @hubermanlab"
    echo "    - Protocol summaries"
    echo "    - Episode announcements"
    echo "    - Research highlights"
    echo ""
    echo "  YouTube: youtube.com/@hubermanlab"
    echo "    - Full episodes"
    echo "    - Clips and shorts"
    echo "    - Community posts"
    echo ""
    echo "  Instagram: @hubermanlab"
    echo "    - Visual protocol summaries"
    echo "    - Quick tips"
    echo ""
}

generate_summary() {
    echo -e "${YELLOW}Generating update summary...${NC}"

    SUMMARY_FILE="${OUTPUT_DIR}/update-summary-${TIMESTAMP}.md"

    cat > "$SUMMARY_FILE" << EOF
# Huberman Lab Updates - ${TIMESTAMP}

## Sources Checked
- [x] Podcast RSS Feed
- [x] Newsletter Archive Info
- [x] Social Media Channels

## Quick Links
- **All Episodes**: https://www.hubermanlab.com/all-episodes
- **Newsletter**: https://www.hubermanlab.com/newsletter
- **Topics Index**: https://www.hubermanlab.com/topics
- **NSDR Resources**: https://www.hubermanlab.com/nsdr
- **Protocols**: https://www.hubermanlab.com/protocols

## How to Stay Updated

### Podcast
New episodes released:
- **Monday**: Full-length episodes (2-3 hours)
- **Thursday**: Guest episodes or "Essentials" (condensed)

### Newsletter
Sign up at hubermanlab.com/newsletter for:
- Protocol summaries
- Episode highlights
- Exclusive content

### Social Media
- **X/Twitter**: Real-time updates, protocol threads
- **YouTube**: Full episodes, clips
- **Instagram**: Visual summaries

## Notes
This summary was auto-generated on ${TIMESTAMP}.
Review the RSS file for complete episode listings.
EOF

    echo -e "${GREEN}Summary saved to: ${SUMMARY_FILE}${NC}"
}

show_usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --episodes    Fetch latest podcast episodes from RSS"
    echo "  --newsletter  Show newsletter archive information"
    echo "  --social      Show social media sources"
    echo "  --all         Fetch everything and generate summary"
    echo "  --help        Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 --episodes     # Get latest episodes"
    echo "  $0 --all          # Full update check"
}

# Main execution
print_header

if [ $# -eq 0 ]; then
    show_usage
    exit 0
fi

case "$1" in
    --episodes)
        fetch_episodes
        ;;
    --newsletter)
        fetch_newsletter_info
        ;;
    --social)
        fetch_social_updates
        ;;
    --all)
        fetch_episodes
        echo ""
        fetch_newsletter_info
        echo ""
        fetch_social_updates
        echo ""
        generate_summary
        ;;
    --help)
        show_usage
        ;;
    *)
        echo -e "${RED}Unknown option: $1${NC}"
        show_usage
        exit 1
        ;;
esac

echo ""
echo -e "${GREEN}Done!${NC}"
