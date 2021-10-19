#create a new branch and switch directly https://www.banterly.net/2021/07/31/new-in-git-switch-and-restore/
git checkout -b new_branch

#add tag
git tag -a v0.3.3 -m "version v0.3.3"
git push origin main --tags          

#delete local tags
$ git tag -d <tag_name>
# then push

#delete remote tags
$ git push --delete origin tagname

#delete local branch
$ git branch -d <local-branch>

#delete local branches that have been merged into main
$ git fetch --prune 
