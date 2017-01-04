var arr : [Int] = [];
arr.append(1)
arr.append(2)
arr.append(3)
print("--------------------TEST WITH [INT]-----------------------")
print("Array : \n\(arr)");
print("Shuffle :");
arr.shuffle();
print(arr);
arr.shuffle();
print(arr);
arr.shuffle();
print(arr);
arr.shuffle();
print(arr);
print("\n\n");
print("--------------------TEST WITH [CARD]-----------------------")
var arr2: [Card] = Deck.allCards
print("Array : \n\(arr2)");
print("\n");
print("Shuffle :");
arr2.shuffle();
print(arr2);
print("\n\n");
arr2.shuffle();
print(arr2);
print("\n\n");
arr2.shuffle();
print(arr2);
print("\n\n");
arr2.shuffle();
print(arr2);
