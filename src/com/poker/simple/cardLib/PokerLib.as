/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.simple.cardLib {
  import com.poker.api.IPlayingCard;
  import com.poker.api.IPokerLibrary;

  public class PokerLib implements IPokerLibrary {
    private var _cards:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
    private var _dead:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
    private var _remaining:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
    public function PokerLib() {
      initCards();
    }
    protected function initCards():void{

    }
    public function get card():Vector.<IPlayingCard> {
      return _cards;
    }

    public function getCardsByPoint(point:int):Vector.<IPlayingCard> {
      var result:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
      for each(var card:IPlayingCard in this._cards){
        if(card.point == point) {
          result.push(card);
        }
      }
      return result;
    }

    public function getCardsBySuit(suit:String):Vector.<IPlayingCard> {
      var result:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
      for each(var card:IPlayingCard in this._cards){
        if(card.suit == suit) {
          result.push(card);
        }
      }
      return result;
    }

    public function getCards(point:int, suit:String):Vector.<IPlayingCard> {
      var result:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
      for each(var card:IPlayingCard in this._cards){
        if(card.suit == suit && card.point == point) {
          result.push(card);
        }
      }
      return result;
    }

    public function getRandomCards(count:int):Vector.<IPlayingCard> {
      return null;
    }

    public function getDeadCards():Vector.<IPlayingCard> {
      return _dead;
    }

    public function getRemainingCard():Vector.<IPlayingCard> {
      return _remaining;
    }

    public function sendRandomCards(count:int):Vector.<IPlayingCard> {
      return null;
    }
  }
}
