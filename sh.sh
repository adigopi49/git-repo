read -p "enter your token : " token
sshkey=`cat .ssh/id_rsa.pub`
if [ $? -eq 0 ]; then
echo "copy the key to github account"
curl -X POST \
-H "Authorization: token $token" \
-H "Content-Type: application/json" \
-d "{\"title\": \"SSHKEY\",\"key\": \"$sshkey\"}" \
"https://api.github.com/user/keys"

	if [ $? -eq 0 ];then

		echo "work"
	else
		echo "not work"
	fi

echo "suucess"
else
echo "fail"
fi

