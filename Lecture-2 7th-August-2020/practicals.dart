import 'dart:io';

main() {
  // Program to accept a number and print it
  stdout.write("Enter a number to be displayed ");
  String data = stdin.readLineSync();
  int num = int.parse(data);
  print("The value you entered is $num");
  print("Hello world Thank you");
}
