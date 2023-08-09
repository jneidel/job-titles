# job-titles

> Normalized dataset of 70k job titles

[![](https://img.shields.io/badge/job_titles-73380-brightgreen.svg?style=flat-square)](job-titles.txt)

## Data Normalizations

The data is normalized in the following ways:

- lowercase
- `-` replaced with a \<Space\>
- `,` removed

## Caveats

- Duplicates such as `a and p mechanic` and `a&p mechanic`
- Non-English titles such as `ab initio etl developer`

## See also

- [animal names](https://github.com/jneidel/animal-names)
- [nationalities](https://github.com/jneidel/nationalities)

## Contribute

Feel free to open a pull request fixing above listed caveats or any other enhancements.

Only edit `job-titles.txt`. After doing so run `./format.sh`.

## Attribution

This dataset is a collection of the following sources:

- [johnpcarty/Thesaurus-of-Job-Titles](https://github.com/johnpcarty/Thesaurus-of-Job-Titles/blob/master/synonym_job_titles_for_search.txt) (GPLv3)
- [onurdegerli/job-titles](https://github.com/onurdegerli/job-titles/blob/master/job_titles.sql)
- [fluquid/find_job_titles](https://github.com/fluquid/find_job_titles/blob/master/src/find_job_titles/data/titles_combined.txt.gz) (MIT)
