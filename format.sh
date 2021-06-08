#! /bin/bash

JOB_TITLES_FILE=job-titles.txt
JOB_TITLES_JSON_FILE=job-titles.json

echo "Formatting: $JOB_TITLES_FILE";
JOB_TITLES=$( cat $JOB_TITLES_FILE | tr A-Z a-z | sed -e "s/-/ /g" | sed -e "s/,//g" | sed -e 's/^[[:space:]]*//' | sed -e 's/[[:space:]]*$//' | uniq | sort )
printf '%b\n' "$JOB_TITLES" > $JOB_TITLES_FILE

echo "Generating: $JOB_TITLES_JSON_FILE"
JOB_TITLES_JSON=$(printf '%b\n' "$JOB_TITLES" | awk -F\; '{ print "\""$1"\"," }' | sed "$ s/.$//")
JOB_TITLES_JSON="{\"job-titles\": [\n${JOB_TITLES_JSON}\n] }"
printf '%b\n' "$JOB_TITLES_JSON" > $JOB_TITLES_JSON_FILE

echo "Updating readme item counter"
README=readme.md
JOB_TITLES_LENGTH=$(echo "$JOB_TITLES" | wc -l)
README_CONTENT=$(cat $README | sed -e "s|/job_titles-[0-9]\+-|/job_titles-$JOB_TITLES_LENGTH-|g")
printf '%b\n' "$README_CONTENT" > $README
