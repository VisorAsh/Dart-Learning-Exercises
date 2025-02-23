// Exercice: PairNumbers
// Écris un programme qui prend une liste de nombres et retourne une nouvelle liste contenant uniquement les nombres pairs.

// Explication
// Utilise une boucle for pour parcourir la liste.
// Ajoute les nombres pairs à une nouvelle liste.

// Solution
void main() {
  const List<int> nums = [5, 6, 8, 9, 20, 6, 60, 71, 4];
  print(filterEvenNumbers(nums));
}

List<int> filterEvenNumbers(List<int> nums) {
  List<int> evenNums = [];
  for (int number in nums) {
    if (number % 2 == 0) {
      // !=
      evenNums.add(number);
    }
  }
  return evenNums;
}
