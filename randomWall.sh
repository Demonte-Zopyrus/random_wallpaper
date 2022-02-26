# /bin/bash
if [ $# -eq 0 ]
  then
    flatpak run org.gabmus.hydrapaper -r
else
    counter=1
    while true
    do
        ((second = $1 * 60))
        clear
        echo Num $counter wallpaper, updating....
        flatpak run org.gabmus.hydrapaper -r
        echo Done! Waiting $1 minutes....
        ((counter++))
        sleep $second
    done
        
fi

