set -e

cd "`dirname "$(which $0)"`"
source conf/$1

# proxy support
if [ "${http_proxy}" != "" ]; then
	CURL='curl --proxy $http_proxy'
else
  CURL='curl'
fi
$CURL -Ls $URL | pup $SELECTOR | json -a $PROPERTIES
