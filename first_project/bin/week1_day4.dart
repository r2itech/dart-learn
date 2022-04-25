import 'hero.dart';

void main(List<String> args) {
  Hero ryu = Hero(name: "Ryucant"); // Instantiate
  ryu.setDamage = 10;
  print("Damage : " + ryu.getDamage.toString());
  ryu.attack();
  print(ryu.health);
  ryu.hit();
  print(ryu.health);
  ryu.walk();
}

// // Class Hero
// class Hero {
//   // Property
//   String? name;
//   int health;
//   int? damage;

//   // Constructor
//   // Hero(this.name, this.health, this.damage); // General Constructor
//   Hero({this.name, this.health = 100, this.damage}); // Optional Constructor Parameter

//   // Method
//   void attack() {
//     print("$name sedang menyerang");
//   }

//   void hit() {
//     print("$name sedang diserang");
//     health -= 10;
//   }

//   void walk() {
//     print("$name sedang berjalan");
//   }
// }
