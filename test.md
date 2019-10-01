This is just a simple test.

# Trust me

## I don't trust you

~~~Javascript
var temp;
numbers = [14, 2, 55, 1, 0, 38];
console.log(numbers);
for (var i=0; i < numbers.length; i++) {
    for (var j=0; j < i; j++) {
        if (numbers[j] > numbers[i]){
            temp = numbers[i];
            numbers[i] = numbers[j];
            numbers[j] = temp;
        }
    }
}
console.log(numbers);
~~~
