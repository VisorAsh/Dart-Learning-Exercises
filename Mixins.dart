// Exercice : Les streams
// Crée un mixin Logger qui ajoute une méthode log pour afficher un message. Utilise ce mixin dans une classe User.

// Explication :
// Définis un mixin avec une méthode.
// Utilise le mot-clé with pour appliquer le mixin à une classe.

// Solution
mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

class User with Logger {
  String name;

  User(this.name);

  void greet() {
    log("User $name says hello!");
  }
}

void main() {
  User user = User("Bob");
  user.greet(); // Log: User Bob says hello!
}
