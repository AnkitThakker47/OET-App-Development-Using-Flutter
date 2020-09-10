class Person {
  int _age = 0;
  String _name = "";
  Person(age, name) {
    this._age = age;
    this._name = name;
  }

  int get age => _age;
  String get name => _name;
}
