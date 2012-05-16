g() {
	local CD
	CD=$(egrep "^$1 " $HOME/.zmarks | sed "s#^$1 ##")
	cd "$CD"
}

s() {
	local DIR
	DIR=`pwd`
	echo "$1 $DIR" >> $HOME/.zmarks
}

d() {
	t=$(mktemp -t zmarks)
	sed "/^$1 /d" $HOME/.zmarks > $t
	mv $t $HOME/.zmarks
}