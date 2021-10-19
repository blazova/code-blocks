#create a new branch and switch directly https://www.banterly.net/2021/07/31/new-in-git-switch-and-restore/
git checkout -b new_branch

#add tag
git tag -a v0.3.3 -m "version v0.3.3"
git push origin main --tags          

#add temp tag v-e2- on a specific branch feature-accomodate-new-secrets and push
#the branch with tags will have different versions, and after merging to main will bump the main's version
git tag -a v-e2-0.0.5 -m "version v-e2-0.0.5"       
git push origin feature-accomodate-new-secrets --tags

#delete local tags
$ git tag -d <tag_name>
# then push

#delete remote tags
$ git push --delete origin tagname

#delete local branch
$ git branch -d <local-branch>

#delete local branches that have been merged into main
$ git fetch --prune 
