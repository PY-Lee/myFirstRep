echo "welcome to number guessing game!"
echo "enter a target num"
read target

down=1
up=10
guessGame(){


echo enter a num between $down and $up:
read guess

while [ $guess -ne $target ]; do

    if [ "$guess" -lt "$down" ] || [ "$guess" -gt "$up" ]; then
        echo error
    elif [ "$guess" -gt "$target" ]; then 
        up=$guess
        echo enter $down to $up： 
    else 
        down=$guess
        echo enter $down to $up: 
    fi
    
    echo enter a num between $down and $up:
    read guess
done
echo bingl!!!
}
guessGame;


