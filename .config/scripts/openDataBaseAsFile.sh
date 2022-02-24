#!/bin/bash

T_BASE=("https://translate.google.com/?sl=en&tl=es&text=" "&op=translate")
Y_BASE="https://www.youtube.com/results?search_query="
S_BASE="https://stackoverflow.com/search?q="
G_BASE="https://www.google.com/search?q="

PRIVATE_SEARCH=0
QUERY=""

displayHelp() {
	echo "
USAGE
  open <flag> query
		
FLAG	DESCRIPTION
  -t	Translate your query		
  -y	Search your query on YouTube		
  -s	Search your query on StackOverFlow
  -g	Search your query on Google
  -p	Set private mode for your search (Only on firefox)
	
		
EXAMPLES
  open -y -p "Beat it"
	open -t "Show must go on"
"
}

while getopts "hpt:y:s:g:" opt; do
	case $opt in
	h)
		displayHelp
		;;
	t)
		QUERY="${T_BASE[0]}${OPTARG// /%20}${T_BASE[1]}"
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
		QUERY="$G_BASE${OPTARG// /%20}"
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
