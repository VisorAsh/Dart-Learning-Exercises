// Exercice: Class Person
// Crée une classe Person avec deux propriétés : name (String) et age (int). Ajoute une méthode introduce qui affiche "Hello, my name is [name] and I am [age] years old.

// Explication
// Définis une classe avec un constructeur.
// Ajoute une méthode pour afficher l'introduction.

// Solution
void main() {
  Person person = Person("John Doe", 42);
  person.introduce();
  print({'name': person.name, 'age': person.age});
}

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}
