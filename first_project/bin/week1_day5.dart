import 'hero.dart';

void main(List<String> args) {
  // Mage ryu = Mage(skill: "Bacot", name: "Ryu", health: 105);
  // print(ryu.skill);
  // ryu.attack();

  // Fly fryu = Fly(name: "Ryu", skill: "Bacot", health: 100);
  // fryu.fly();
  // fryu.attack();

  // Marksman ryucant = Marksman("Cungur", "Ryucant", 100);
  // print(ryucant.weapon);
  // ryucant.attack();

  // FUTURE (ASHYNCHRONOUS)
  // future();
}

// INHERITANCE
class Mage extends Hero {
  String? skill;

  Mage({String? skill, required String name, int health = 100})
      : super(name: name, health: health) {
    this.skill = skill;
  }
}

class Marksman extends Hero {
  String? weapon;

  Marksman(String weapon, String name, int health)
      : super(name: name, health: health) {
    this.weapon = weapon;
  }
}

// INTERFACE -> override
class Fly extends Hero implements Flyable {
  String? skill;

  Fly({String? skill, required String name, int health = 100})
      : super(name: name, health: health) {
    this.skill = skill;
  }

  @override
  fly() {
    print("Hero is fly");
  }

  @override
  void attack() {
    print("Hero is attack");
  }
}

class Flyable {
  fly() {}
}

// FUTURE (ASYNCHRONOUS)
void future() async {
  print("Create future");
  // await
  await getOrder().then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });
  // try catch
  try {
    String status = await getOrder();
    print(status);
  } catch (e) {
    print(e);
  }
  print("future() stop");
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 2), () {
    bool stok = false;
    if (stok) {
      return "Order berhasil.";
    } else {
      throw "Order gagal! Stok habis.";
    }
  });
}
