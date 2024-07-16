# recursion.ksh
factorial() {
    local n=$1
    if (( n <= 1 )); then
        echo 1
    else
        echo $(( n * $(factorial $(( n - 1 ))) ))
    fi
}

read -p "Enter an integer: " input
param=$((input))

if (( param == 0 && input != "0" )); then
    echo "Invalid input"
else
    echo "Factorial: $(factorial $param)"
fi
