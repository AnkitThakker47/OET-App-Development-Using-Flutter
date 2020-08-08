import 'dart:io';

main() {
  List<double> myList = List();
  while (true) {
    stdout.write("Do you want to enter a number (y/n): ");
    String choice = stdin.readLineSync();
    if (choice == 'Y' || choice == 'y') {
      stdout.write("enter the value: ");
      double val = double.parse(stdin.readLineSync());
      myList.add(val);
      print("\n");
    } else {
      if (myList.isEmpty) {
        print("Thank You");
      }
      break;
    }
  }
  if (myList.isEmpty) {
    double max = myList[0];
    for (double i in myList) {
      if (i > max) {
        max = i;
      }
    }
    print("The maximum value is $max");
  } else {
    print("List is empty no elements found");
  }
}
