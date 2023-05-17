#first fix all fixable errors manually:

# fix all changes on branch
sqlfluff fix $(git diff origin/master... --name-only && git diff --name-only)

# continue with non-fixable errors:

# lint all changes on branch
sqlfluff lint $(git diff origin/master... --name-only && git diff --name-only)

# lint a specific folder
sqlfluff lint  models/dtc/final/email_models/*.sql
