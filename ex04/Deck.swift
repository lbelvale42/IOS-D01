import Foundation

extension Array {
   mutating func shuffle(){
       var i = 0
       let len = self.count
       var tmp :Element
       while (i < len) {
           let rdm = Int(arc4random_uniform(UInt32(len)))
           if i != rdm {
             tmp = self[i]
             self[i] = self[rdm]
             self[rdm] = tmp
           }
           i += 1
       }
   }
}

class Deck : NSObject {
    var cards : [Card] = []
    var discards : [Card] = []
    var outs : [Card] = []

    static let allSpades : [Card] = Value.allValues.map {
      return Card(color: Color.SPADE, value: $0)
    }
    static let allDiamonds: [Card] = Value.allValues.map {
      return Card(color: Color.DIAMOND, value: $0)
    }
    static let allHearts  : [Card] = Value.allValues.map {
      return Card(color: Color.HEART, value: $0)
    }
    static let allClubs   : [Card] = Value.allValues.map {
      return Card(color: Color.CLUB, value: $0)
    }
    static let allCards   : [Card] = {
      var arr = [Card]()
      arr += allSpades
      arr += allDiamonds
      arr += allHearts
      arr += allClubs
      return arr
    }()


    init (shuffle: Bool) {
      cards = Deck.allCards
      if shuffle == true {
          cards.shuffle()
      }
    }

    override var description : String {
      return cards.map {
        return ($0.description)
      }.description
    }

    func draw () -> Card? {
      if let card = cards.first {
        cards.removeAtIndex(0)
        outs.append(card)
        return card
      }
      return nil
    }
     func fold (c: Card) {
       for card in self.outs {
         if c.isEqual(card) {
           discards.append(c)
           self.outs.removeAtIndex(outs.indexOf(c)!)
         }
       }
     }
}
