// recursion.js
function factorial(n) {
    if (n <= 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question('Enter an integer: ', input => {
    const param = parseInt(input, 10);
    if (isNaN(param)) {
        console.log('Invalid input');
    } else {
        console.log('Factorial: ' + factorial(param));
    }
    readline.close();
});
