# databricks profiles
vi ~/.databrickscfg
cat ~/.databrickscfg

# remove built data when re-running adjusted code on active cluster
rm -rf build/ dist/ getsafe_reporting.egg-info/

# secret management
databricks secrets delete-scope --scope TEST_SFTP
databricks secrets create-scope --scope TEST_SFTP

databricks secrets delete --scope TEST_SFTP --key PORT
databricks secrets put --scope TEST_SFTP --key PORT  
databricks secrets put --scope TEST_SFTP --key PORT  --profile old-space   

databricks secrets list-scopes
databricks secrets list --scope my-scope --output JSON
