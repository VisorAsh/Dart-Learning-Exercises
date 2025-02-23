// Exercice: WordsLength
// Écris un programme qui prend une liste de mots et retourne un Map où chaque clé est un mot et la valeur est la longueur du mot.

// Explication
// Utilise une boucle for pour parcourir la liste.
// Ajoute chaque mot et sa longueur au Map.

// Solution
void main() {
  print(wordsLength(["Hello", "World!"]));
  print(wordsLength(["Dart", "is", "awesome"]));
  print(wordsLength(["I", "am", "learning", "Dart"]));
  print(wordsLength(["Dart", "Flutter", "Mobile", "Development"]));
}

Map<String, int> wordsLength(List<String> words) {
  Map<String, int> mappedWord = {};
  for (String word in words) {
    mappedWord[word] = word.length;
  }
  return mappedWord;
}
