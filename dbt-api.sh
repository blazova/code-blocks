# Dbt API for MC debugging
# https://docs.getdbt.com/dbt-cloud/api-v2#/operations/List%20Jobs

# List jobs: 
curl --request GET \
  --url https://cloud.getdbt.com/api/v2/accounts/{account_id}/jobs/ \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Token {token}’

curl --request GET \
  --url 'https://cloud.getdbt.com/api/v2/accounts/{account_id}/jobs/?account_id={account_id}' \
  --header 'Accept: application/json' \
  --header 'Authorization: Token {token}'

# List runs:

curl --request GET \
  --url 'https://cloud.getdbt.com/api/v2/accounts/{account_id}/runs//?account_id={account_id}&order_by=-finished_at&job_definition_id={job_id}' \
  --header 'Accept: application/json' \
  --header 'Authorization: Token {token}'

curl --request GET \
  --url 'https://cloud.getdbt.com/api/v2/accounts/110/runs/?order_by=-finished_at’ \
  --header 'Accept: application/json' \
  --header 'Authorization: Token {token}'


# Retrieve artefacts:

curl --request GET \
  --url https://cloud.getdbt.com/api/v2/accounts/110/runs/{run_id}/artifacts/ \
  --header 'Accept: application/json' \
  --header 'Authorization: Token {token}'
