
// ex04 ///////////////////////////////////////////////////////
print("ex04")
print("Shuffled")
var newDeck = Deck(shuffle : true)
print(newDeck.cards)
print("\n\n")
print("Not Shuffled")
var newDeck2 = Deck(shuffle : false)
print(newDeck2.cards)
print("\n\n")
print("Override description :")
print(newDeck)
print("\n\n")
print("Draw + ret:")
print(newDeck.draw())
print("Newdeck :")
print(newDeck)
print("outs :")
print(newDeck.outs)
print("draw all :")
for x in newDeck.cards {
 newDeck.draw()
}
print("cards empty?:")
print(newDeck)
print("outs full?:")
print(newDeck.outs)
print("\n\n")
print("fold Ace HEART:")
newDeck.fold(Card(color:Color.HEART, value:Value.ONE))
print("outs:")
print(newDeck.outs)
print("discards")
print(newDeck.discards)
print("fold all?:")
for x in newDeck.outs {
 newDeck.fold(x)
}
print("outs empty?:")
print(newDeck.outs)
print("discards full:")
print(newDeck.discards)
////////////////////////////////////////////////////// ex04 ///
