#!/bin/bash

# Prompt the user to enter URLs
echo "Enter the URLs you want to process (separate multiple URLs with spaces):"
read -r -a domains

# Check if at least one URL was entered
if [ ${#domains[@]} -eq 0 ]; then
  echo "No URLs entered. Exiting."
  exit 1
fi

# Loop through each entered URL and make a request
for domain in "${domains[@]}"; do
  echo "Processing: $domain"
  curl -G "https://web.archive.org/cdx/search/cdx" \
  --data-urlencode "url=$domain" \
  --data-urlencode "collapse=urlkey" \
  --data-urlencode "output=text" \
  --data-urlencode "fl=original" >> new.txt
done

echo "Processing complete. Results saved to new.txt."
