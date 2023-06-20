
class Product {
  double price;
  int counter;

  Product({ required this.price, this.counter = 0});

  void incrementCounter() {
    counter++;
  }
}