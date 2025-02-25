# Subtool - Archive URL Fetcher

`subtool.bash` is a simple Bash script designed to fetch archived URLs from the Wayback Machine (Internet Archive) for one or more user-specified domains. It uses the Wayback Machine's CDX API to retrieve unique archived URLs and saves them to a text file (`new.txt`) for further analysis or reconnaissance.

## Features
- Accepts single or multiple domains as user input.
- Fetches archived URLs via the Wayback Machine CDX API.
- Deduplicates URLs using `collapse=urlkey`.
- Saves results to `new.txt` for easy access.

## Prerequisites
- **Bash**: Ensure you have a Bash-compatible shell (available on Linux, macOS, or WSL on Windows).
- **curl**: Required for making HTTP requests to the Wayback Machine API. Install it if not already present.

### Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/subtool.git
   cd subtool
   chmod +x subtool.bash
   $ ./subtool.bash

### EXAMPLE
./subtool.bash
Enter the URLs you want to process (separate multiple URLs with spaces):
https://example.com https://test.com
Processing: https://example.com
Processing: https://test.com
Processing complete. Results saved to new.txt.


### NOTES
Input Validation: Ensure URLs are valid (e.g., include http:// or https://)—invalid URLs may return no results.
Appending: Results append to new.txt—delete or move it before running if you want a fresh file.
How It Works
User Input: Prompts for one or more URLs, split by spaces.
API Request: Queries the Wayback Machine CDX API with:
url=<domain>: Target domain.
collapse=urlkey: Deduplicates URLs.
output=text: Text format.
fl=original: Returns original URLs.
Output: Saves results to new.txt.

### LIMITATIONs
Wayback Availability: Only returns URLs archived by the Wayback Machine—unarchived domains yield no results.
Rate Limits: The CDX API may throttle heavy usage—use ethically.
No Filtering: Outputs all archived URLs—further processing needed for specific types (e.g., .js, .php).
