// task 3
//Write a function that takes a number and returns a list of its digits.
// So for 2342 it should return [2,3,4,2].
List<dynamic> makeListOfDigits(digit){
  var listOfDigits = [];
  var strDigit = digit.toString();
  int length = strDigit.length;

  for(int i = 0; i < length; i++){
    listOfDigits.add(strDigit[i]);
  }
  return listOfDigits;
}

// task 4
//Write a function that tests whether a string is a palindrome.
bool isPalindrome(String word) {
  for (int i = 0; i < word.length ~/ 2; i++) {
    if (word[i] != word[word.length - i - 1]) {
      return false;
    }
  }
  return true;
}

// task 5
//Write a function that concatenates two lists.
// [a,b,c], [1,2,3] → [a,b,c,1,2,3].
List<dynamic> conctenateTwoLists(list1, list2){
  var newList = new List.from(list1)..addAll(list2);

  return newList;
}

// task 6
//Write a function that merges two sorted lists into a new sorted list.
// [1,4,6],[2,3,5] → [1,2,3,4,5,6].
List<int> mergeTwoSortedLists(list1, list2){
  var sortedList = (list1 + list2);
  sortedList.sort();

  return sortedList;
}

// task 7
//Write a function that returns the largest element in a list.
int findTheLargestElement(listToFindTheLargestElement){
  int theLargestElement = listToFindTheLargestElement[0];
  for(int i = 1; i < listToFindTheLargestElement.length; i++){
    if(theLargestElement < listToFindTheLargestElement[i]){
      theLargestElement = listToFindTheLargestElement[i];
    }
  }

  return theLargestElement;
}

// task 8
//Write function that reverses a list, preferably in place.
List<int> reverseList(listToReverse){
  for(var i = 0;i < listToReverse.length/2; i++){
    var temp = listToReverse[i];
    listToReverse[i] = listToReverse[listToReverse.length-1-i];
    listToReverse[listToReverse.length-1-i] = temp;
  }

  return listToReverse;
}

// task 9
//Write a function that checks whether an element occurs in a list.
bool isElementOccursInList(list, element) {
  for(int i = 0; i < list.length; i++){
    if(list[i] == element){
      return true;
    }
  }

  return false;
}

// task 10
//Write a function that returns the elements on odd positions in a list.
List<dynamic> makeListWithOddIndexedElements(list) {
  var listWithOddIndexedElements = [];

  for(int i = 0; i < list.length; i++){
    if(i %2 != 0){
      listWithOddIndexedElements.add(list[i]);
    }
  }

  return listWithOddIndexedElements;
}

// task 11
//Write a function that computes the running total of a list.
num totalOfList(listToFindTotal){
  num total = 0;
  for(var i = 0;i < listToFindTotal.length; i++){
    total += listToFindTotal[i].toInt();
  }

  return total;
}

void main() {
  // task 1
  // Write a program that prints the first 25 prime numbers.
  int amountOfDigits = 25;
  for (int i = 1; i <= amountOfDigits; i++) {
    print(i);
  }

  // task 2
  // Write a program that prints the next 20 leap years.
  int amountOfPrintedYears = 0;
  int currentYear = 2022;

  while (amountOfPrintedYears < 20) {
    if ((currentYear % 4 == 0) ||
        (currentYear % 100 == 0) && (currentYear % 400 == 0)) {
      print(currentYear);
      amountOfPrintedYears++;
    }
    currentYear++;
  }
}
