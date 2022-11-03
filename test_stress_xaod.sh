# A simple shell script that will generate a servicex.yaml file and automatically run it, primarily meant for GitHub actions.
# David Liu, 21 September 2020, Seattle, WA.

printf "api_endpoints:\n  - endpoint: https://xaod.servicex.ssl-hep.org/\n    email: $1\n    password: $2" > ./servicex.yaml
pytest --stress tests/xAOD/test_large_xAOD_datasets.py
rm ./servicex.yaml