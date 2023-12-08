import 'dart:io';

void main() {
  print('Enter the number to find factorial: ');
  int number = int.parse(stdin.readLineSync()!); //consider number = 5
  print('Factorial of $number is ${factorial(number)}');
}

int factorial(int number) {
  if (number < 2) {
    return 1;
  }
  return number * factorial(number - 1);
  // 5 * factorial(4) => 4 * factorial(3) => 3 * factorial(2) => 2 * factorial(1).
  // factorial(1) = return 1;
  // then 1 * 2 * 3 * 4 * 5 = 120
  //will be the answer. Simple 😊
}

/*working 
-------------
                          5 * factorial(4)
                           /\
           1 * 2 * 3 * 4 * 5 \
                              4  * factorial(3) 
                               / \
                  1 * 2 * 3 * 4   \
                                   3 * factorial(2)
                                    / \
                          1 * 2 * 3    \
                                        2 * factorial(1)
                                         / \
                                     1 * 2  \
                                              1

                                              😊😊 
*/
