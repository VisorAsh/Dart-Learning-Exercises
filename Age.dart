// Exercice : Programme de calcul d'âge
// Ecrire un programme qui demande à l'utilisateur son nom et son âge. Le programme doit afficher le nom de l'utilisateur et lui dire combien d'années il lui reste avant d'atteindre son centenaire.

// Consigne :
// Cet exercice ddoit être lancé dans un terminal (dans celui de vscode par exemple) avec la commande "dart Age.dart"

import 'dart:io';

void main() {
  print("Programme de calcul d'âge");
  stdout.write("Etrez votre nom : ");
  String name = stdin.readLineSync()!;
  int age = 0;
  do {
    stdout.write("Entrez votre age : ");
    try {
      age = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Veuillez entrer un nombre entier");
    }
  } while (age > 100 || age < 0);

  print(
    "Bonjour $name, il vous reste ${100 - age} ans avant d'atteindre votre centenaire.",
  );
}
