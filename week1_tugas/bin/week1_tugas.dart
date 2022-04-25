import 'dart:html';

import 'package:week1_tugas/week1_tugas.dart' as week1_tugas;
import 'dart:io';

void main(List<String> arguments) {
  void runKucing() {
    print("Plese enter kucing name : ");
    String name = stdin.readLineSync()!;
    print("Plese enter kucing weight : ");
    double weight = double.parse(stdin.readLineSync()!);
    print("Plese enter kucing color : ");
    String color = stdin.readLineSync()!;
    print("Plese enter kucing age (year) : ");
    int age = int.parse(stdin.readLineSync()!);
    Kucing cat = Kucing(name: name, weight: weight, furColor: color, age: age);
    print("\n");
    print("Cat name is " + cat.name);
    print(cat.name + " weight is " + cat.weight.toString());
    print("Cat color is " + cat.furColor.toString());
    print("Cat age is " + cat.age.toString() + " years old");
    cat.walk();
    cat.eat();
    cat.poop();
    cat.sleep();
    print("\n");
  }

  void runIkan() {
    print("Plese enter ikan name : ");
    String name = stdin.readLineSync()!;
    print("Plese enter ikan weight : ");
    double weight = double.parse(stdin.readLineSync()!);
    print("Plese enter ikan color : ");
    String color = stdin.readLineSync()!;
    print("Plese enter ikan age (year) : ");
    int age = int.parse(stdin.readLineSync()!);
    Ikan fish = Ikan(name: name, weight: weight, skinColor: color, age: age);
    print("\n");
    print("Fish name is " + fish.name);
    print(fish.name + " weight is " + fish.weight.toString());
    print("Fish color is " + fish.skinColor.toString());
    print("Fish age is " + fish.age.toString() + " years old");
    fish.swim();
    fish.eat();
    fish.poop();
    fish.sleep();
    print("\n");
  }

  while (true) {
    print("     >>>   MENU   <<<     ");
    print("Please choose one!");
    print("1. Kucing");
    print("2. Ikan");
    print("3. Exit");

    int input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        runKucing();
        break;
      case 2:
        runIkan();
        break;
      case 3:
        exit(0);
      default:
        print("Your choose is not valid!!!");
        break;
    }
  }
}

abstract class Hewan {
  String name;
  int? age;
  double weight;

  Hewan({required String this.name, int? age, required double this.weight});

  void sleep() {
    print("$name is sleeping");
  }

  void eat() {
    print("$name is eating");
  }

  void poop() {
    print("$name is poop");
  }
}

class Kucing extends Hewan {
  String? furColor;

  Kucing(
      {String? furColor,
      required String name,
      int? age,
      required double weight})
      : super(name: name, age: age, weight: weight) {
    this.furColor = furColor;
  }

  @override
  void sleep() {
    super.sleep();
  }

  @override
  void eat() {
    super.eat();
    weight += 10.0;
    print("$name weight is $weight");
  }

  @override
  void poop() {
    if ((weight - 10.0) >= 0) {
      super.poop();
      weight -= 10.0;
      print("$name weight is $weight");
    } else {
      print("$name can't poop, because he is underweight!");
    }
  }

  void walk() {
    print("$name is walking");
  }
}

class Ikan extends Hewan {
  String? skinColor;

  Ikan(
      {String? skinColor,
      required String name,
      int? age,
      required double weight})
      : super(name: name, age: age, weight: weight) {
    this.skinColor = skinColor;
  }

  @override
  void sleep() {
    super.sleep();
  }

  @override
  void eat() {
    super.eat();
    weight += 10.0;
    print("$name weight is $weight");
  }

  @override
  void poop() {
    if ((weight - 10.0) >= 0) {
      super.poop();
      weight -= 10.0;
      print("$name weight is $weight");
    } else {
      print("$name can't poop, because he is underweight!");
    }
  }

  void swim() {
    print("$name is swiming");
  }
}
