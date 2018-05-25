# Defined in /var/folders/tr/n8ck1d5524l8_w09tw7_cz6w0000gn/T//fish.KEaXQf/setstatuskey.fish @ line 1
function setstatuskey
	if test -f .git/HEAD
    it2setkeylabel set status (git_branch_name)
  else
    it2setkeylabel set status (command pwd)
  end
end
