grep commands(Searching & Filtering):

Find all error logs:
grep "ERROR" sample.log

Case-insensitive search (e.g., finding "info" regardless of capitalization):
grep -i "info" sample.log

Invert match (show everything except INFO logs):
grep -v "INFO" sample.log

sed commands(Transforming & Replacing):

Substitute/Replace text inline or on output (replace ERROR with CRITICAL):
sed 's/ERROR/CRITICAL/g' sample.log

Delete specific lines matching a pattern (remove WARN lines):
sed '/WARN/d' sample.log

Use sed to replace ERROR with ERR and write the result to a new file.
sed 's/ERROR/ERR/g' sample.log > sample_err.log

awk commands (Column & Field Extraction):

Print specific columns (extract date and log level - columns 1, 2, and 4):
awk '{print $1, $2, $4}' sample.log

Conditional filtering (print lines where column 4 equals ERROR):
awk '$3 == "ERROR" {print $0}' sample.log

Extract a key-value pair based on an equals sign delimiter (=):
awk -F'=' '$1 ~ /user_id/ {print $2}' sample.log

Print only the timestamps ($1, $2) of WARN and ERROR lines.
awk '$3 == "WARN" || $3 == "ERROR" {print $1, $2}' sample.log

jq commands (JSON Parsing):

Extract a top-level JSON field:
jq '.environment' sample.json

Filter array items in a JSON structure (find endpoints with status "degraded"):
jq '.endpoints[] | select(.status == "degraded")' sample.json

Use jq to output the number of healthy endpoints.
jq '[.endpoints[] | select(.status == "healthy")] | length' sample.json