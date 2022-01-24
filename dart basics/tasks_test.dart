import 'package:flutter_test/flutter_test.dart';
import 'tasks.dart';

void main(){
  test('task 4', (){
    const word1 = "hello";
    const word2 = "level";

    final res_4= isPalindrome(word1);
    final res4 = isPalindrome(word2);

    expect(res_4, false);
    expect(res4, true);
  });

  test('task 5', (){
    const list1 = ['a', 'b', 'c'];
    const list2 = [1, 2, 3];

    final res5 = conctenateTwoLists(list1, list2);

    expect(res5, ['a', 'b' ,'c', 1, 2, 3]);
  });

  test('task 6', (){
    const list1 = [1, 4, 6];
    const list2 = [2, 3, 5];

    final res6 = mergeTwoSortedLists(list1, list2);

    expect(res6, [1, 2, 3, 4, 5, 6]);
  });

  test('task 7', (){
    const listToFindTheLargestElement = [5, 7, 345, 8, 0];

    final res7 = findTheLargestElement(listToFindTheLargestElement);

    expect(res7, 345);
  });

  test('task 8', (){
    const listToReverse = [0, 1, 2, 3, 4, 5];

    final res8 = reverseList(listToReverse);

    expect(res8, [5, 4, 3, 2, 1, 0]);
  });

  test('task 9', (){
    const list = [2, 4, 6, 8, 10];
    const element1 = 10;
    const element2 = 100;

    final res_9 = isElementOccursInList(list, element1);
    final res9 = isElementOccursInList(list, element2);

    expect(res_9, true);
    expect(res9, false);
  });

  test('task 10', (){
    const list = [0, 1, 0, 1, 0, 1];

    final res10 = makeListWithOddIndexedElements(list);

    expect(res10, [1, 1, 1]);
  });

  test('task 11', (){
    const listToFindTotal = [10, 10, 10, 10, 10];

    final res11 = totalOfList(listToFindTotal);

    expect(res11, 50);
  });
}
