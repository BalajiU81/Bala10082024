URL="www.guvi.in"
status_code=$(curl -s -o /dev/null -w "%{http_code}" $URL)
echo $status_code
if [ $status_code -ge 100 ] && [ $status_code -le 199 ]; then
echo "The status code indicates informations response"
elif [ $status_code -ge 200 ] && [ $status_code -le 299 ]; then
echo "The status code indicates Success"
elif [ $status_code -ge 300 ] && [ $status_code -le 399 ]; then
echo "The status code indicates Redirection"
elif [ $status_code -ge 400 ] && [ $status_code -le 499 ]; then
echo "The status code indictates Client error"
elif [ $status_code -ge 500 ] && [ $status_code -le 599 ]; then
echo "The status code indicates server erros"
else
 echo "Wrong error code"
fi
