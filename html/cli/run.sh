set -e

cd "`dirname "$(which $0)"`"
source conf/$1

curl -Ls $URL | pup $SELECTOR | json -a $PROPERTIES
