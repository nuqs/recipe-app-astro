import 'dart:math';

Random random = Random();

class RandomNumber {
  static generateNumber() {
    int randomNumber = random.nextInt(100);
    return randomNumber.toString();
  }

  static generateRating() {
    double randomRating = random.nextDouble() * 5;
    return randomRating.toStringAsFixed(1);
  }
}
