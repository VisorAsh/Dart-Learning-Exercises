// Exercice: Palindrome
// Écris une fonction appelée isPalindrome qui prend une chaîne de caractères en entrée et retourne true si la chaîne est un palindrome (se lit de la même manière de gauche à droite et de droite à gauche), sinon false.

// Explication
// Compare la chaîne originale avec sa version inversée.
// Utilise la méthode split, reversed, et join pour inverser la chaîne.

// Solution
void main() {
  print(isPalindrome("kayak"));
  print(isPalindrome("lol"));
  print(isPalindrome("hishaam"));
  print(isPalindrome2("kayak"));
  print(isPalindrome2("lol"));
  print(isPalindrome2("hishaam"));
}

// isPalindrome (By me)
bool isPalindrome(String string) {
  if (string == string.split('').reversed.join('')) {
    return true;
  }
  return false;
}

// isPalindrome (Optimised version)
bool isPalindrome2(String str) {
  String reversedString = str.split('').reversed.join('');
  return str == reversedString;
}
