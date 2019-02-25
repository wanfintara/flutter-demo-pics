/// This only for understanding dart programming
/// no flutter in this file

void main() {
  var deck = Deck();
	print(deck);
  deck.removeCard('Three', 'Diamonds');
  print(deck);
}

class Deck {
  List<Card> cards = <Card>[];
  
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
		var suits = ['Diamonds', 'Heart', 'Clubs', 'Spades'];
  
  	for (var mySuit in suits) {
      for (var myRank in ranks) {
        var card = Card(
          suit: mySuit,
          rank: myRank,
        );
        cards.add(card);
      }
    }
  }
  
	toString() {
		return cards.toString();
  }
  
  shuffle() {
    cards.shuffle();
  }
  
  cardWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }
  
  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    
    return hand;
  }
  
	removeCard(String rank, String suit) {
    cards.removeWhere((card) => card.rank == rank && card.suit == suit);
  }
}

class Card {
  String suit;
  String rank;
  
  Card({this.rank, this.suit});
  
  toString() {
    return '$rank of $suit';
  }
}