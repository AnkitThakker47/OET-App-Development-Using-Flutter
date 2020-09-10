abstract class one {
  int x = 10;
  void printthenumber();
}

class some extends one {
  int x = 15;
  void printthenumber() {
    print(this.x);
  }
}

void main() {
  some val = new some();
  val.printthenumber();
}
