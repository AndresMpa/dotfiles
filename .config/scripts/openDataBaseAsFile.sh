#!/bin/bash

Y_BASE="https://www.youtube.com/results?search_query="
S_BASE="https://stackoverflow.com/search?q="
G_BASE="https://www.google.com/search?q="

PRIVATE_SEARCH=0
QUERY=""

displayHelp() {
	echo "
USAGE

  open {flag | argument}
		
FLAG	DESCRIPTION

  -y	Search your query on YouTube		
  -s	Search your query on StackOverFlow
  -g	Search your query on Google
  -p	Set private mode for your search (Only on firefox)
	
		
EXAMPLES

  open -y -p Beat it
"
}

while getopts "hpy:s:g:" opt; do
	case $opt in
	h)
		displayHelp
		;;
	y)
		QUERY="$Y_BASE${OPTARG// /%20}"
		;;
	s)
		QUERY="$S_BASE${OPTARG// /%20}"
		;;
	g)
		QUERY="$G_BASE${OPTARG// /%20}"
		;;
	p)
		PRIVATE_SEARCH=1
		;;
	*)
		exit 1
		;;
	esac
done

if [[ -n $QUERY ]]; then
	if [[ $PRIVATE_SEARCH -eq 1 ]]; then
		firefox --private-window $QUERY
	else
		xdg-open $QUERY
	fi

fi
