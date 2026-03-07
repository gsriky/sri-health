#!/bin/bash
# search-protocols.sh
# Search through Huberman protocols and references
# Usage: ./search-protocols.sh <search_term>

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="${SCRIPT_DIR}/.."
REFERENCES_DIR="${SKILL_DIR}/references"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

if [ $# -eq 0 ]; then
    echo "Usage: $0 <search_term>"
    echo ""
    echo "Examples:"
    echo "  $0 sleep          # Search for sleep-related protocols"
    echo "  $0 dopamine       # Search for dopamine information"
    echo "  $0 'magnesium'    # Search for magnesium supplement info"
    echo "  $0 'morning'      # Search for morning routine protocols"
    echo ""
    echo "Available reference files:"
    ls -1 "${REFERENCES_DIR}"/*.md 2>/dev/null | xargs -n1 basename
    exit 0
fi

SEARCH_TERM="$1"

echo -e "${GREEN}================================================${NC}"
echo -e "${GREEN}  Huberman Protocol Search${NC}"
echo -e "${GREEN}  Term: ${SEARCH_TERM}${NC}"
echo -e "${GREEN}================================================${NC}"
echo ""

# Search function
search_file() {
    local file="$1"
    local term="$2"
    local filename=$(basename "$file")

    # Count matches
    local count=$(grep -ic "$term" "$file" 2>/dev/null || echo "0")

    if [ "$count" -gt 0 ]; then
        echo -e "${CYAN}=== ${filename} (${count} matches) ===${NC}"
        echo ""
        # Show matching lines with context
        grep -in -B 1 -A 2 "$term" "$file" 2>/dev/null | head -50
        echo ""
        echo "---"
        echo ""
    fi
}

# Search through all reference files
echo -e "${YELLOW}Searching references...${NC}"
echo ""

for file in "${REFERENCES_DIR}"/*.md; do
    if [ -f "$file" ]; then
        search_file "$file" "$SEARCH_TERM"
    fi
done

# Search SKILL.md
if [ -f "${SKILL_DIR}/SKILL.md" ]; then
    echo -e "${YELLOW}Searching SKILL.md...${NC}"
    echo ""
    search_file "${SKILL_DIR}/SKILL.md" "$SEARCH_TERM"
fi

echo -e "${GREEN}Search complete.${NC}"
echo ""
echo "Tip: For comprehensive information, read the full reference files:"
echo "  - protocols.md   : Detailed protocol breakdowns"
echo "  - supplements.md : Complete supplement guide"
echo "  - publications.md: Research and publications"
