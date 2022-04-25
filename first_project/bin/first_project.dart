import 'package:first_project/first_project.dart' as first_project;

void main(List<String> arguments) {
  //** DECLARE VARIABLE */
  // var name = "Deri"; // variable declaration
  // print(name); // print to console

  //** DATA TYPE */
  // var angka_int = 7; // integer => int
  // var angka_double = 7.9; // double => double
  // var perbandingan = true; // boolean => bool
  // string
  // var namaDepan = 'Dede';
  // var namaBelakang = 'Rian';
  // var namaLengkap = "$namaDepan $namaBelakang"; // string interpolation
  // var kalimat =
  //     '$namaDepan $namaBelakang ganteng \$sekali setelah jum\'atan'; // string interpolation
  // print(angka_int);
  // print(angka_double);
  // print(perbandingan);
  // print(namaLengkap);
  // print(kalimat);

  //** OPERATOR */
  // 1. Arithmetic (+, -, *, / , %, ++, --)
  // int angka = 7;
  // print(angka++); // post increment
  // print(++angka); // pre increment
  // print(angka);
  // print(--angka); // pre decrement
  // print(angka--); // post decrement
  // print(angka);
  // 2. Comparations (<, >, ==, <=. >=, !=) // To easy
  // 3. Assignments (=, -=. +=, *=, /=) // To easy
  // 4. Logic
  // bool logic1 = 3 < 5 && 7 < 9; // AND => true && true
  // print(logic1); // true
  // bool logic2 = 3 < 5 && 7 > 9; // AND => true && false
  // print(logic2); // false
  // bool logic3 = 3 > 5 && 7 > 9; // AND => false && false
  // print(logic3); // false
  // bool logic4 = 3 < 5 || 7 < 9; // OR => true || true
  // print(logic4); // true
  // bool logic5 = 3 < 5 || 7 > 9; // OR => true || false
  // print(logic5); // true
  // bool logic6 = 3 > 5 || 7 > 9; // OR => false || false
  // print(logic6); // false

  //** FUNCTION */
  // 1. General Function
  // *function can placed in main function
  // 2. Void Function
  // salam1(); // Without parameter
  // salam2("night", "Deri"); // With parameter
  // // 3. Return Function
  // var _salam3 = salam3("night", "Deri");
  // print(_salam3);
  // var _salam4 = salam4();
  // print(_salam4);
  // var __salam4 = salam4("Morning", "Ryucant");
  // print(__salam4);

  //** CONST AND FINAL */
  // const double phi1 = 3.14; // Const => value can't be change
  // print(phi1);
  // final double phi2; // Final => value can be changed once
  // phi2 = 3.14;
  // print(phi2);
}

//** START BLOCK FUNCTION */
void salam1() {
  print("Hello, good");
}

void salam2(time, name) {
  print("Hello, Good $time $name");
}

String salam3(time, name) {
  return "Hello, good $time $name";
}

String salam4([time = "night", name = "Deri : default value"]) {
  return "Hello, good $time $name";
}
//** END BLOCK FUNCTION */
