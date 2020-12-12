
weather=$(curl -s wttr.in/ool?format=%t)
printf " %s %s \n" "$weather"

