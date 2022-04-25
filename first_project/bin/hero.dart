// Class Hero
abstract class Hero {
  // Property
  String name;
  int health;
  int? _damage;

  // Constructor
  // Hero(this.name, this.health, this.damage); // General Constructor
  Hero(
      {required this.name,
      this.health = 100}); // Optional Constructor Parameter

  // Encapsulation
  // Seter
  set setDamage(int value) {
    _damage = value;
  }

  // Geter
  int? get getDamage {
    return _damage;
  }

  // Method
  void attack() {
    print("$name sedang menyerang");
  }

  void hit() {
    print("$name sedang diserang");
    health -= 10;
  }

  void walk() {
    print("$name sedang berjalan");
  }
}
