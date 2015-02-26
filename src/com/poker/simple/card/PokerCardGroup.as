/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.simple.card {
  import com.poker.api.IComparable;
  import com.poker.api.ICompare;
  import com.poker.api.IPlayingCard;

  public class PokerCardGroup extends Object implements IComparable{
    private var _type:String = "";
    private var _p:int = 0;
    private var _cards:Vector.<IPlayingCard> = new Vector.<IPlayingCard>();
    private var _compare:ICompare;
    public function PokerCardGroup() {
      super();
    }
    public function appendCard(card:IPlayingCard):void{
      var index:int = this._cards.indexOf(card);
      if(index < 0){
        this._cards.push(card);
      }
    }
    public function removeCard(card:IPlayingCard):IPlayingCard{
      var result:IPlayingCard;
      var index:int = this._cards.indexOf(card);
      if(index >= 0){
        result = this._cards[index];
        this._cards = this._cards.splice(index,1);
      }
      return result;
    }
    public function get cards():Vector.<IPlayingCard> {
      return _cards;
    }

    public function get priority():int {
      return _p;
    }

    public function compare(target:Object):Boolean {
      return this._compare.compare(this,target);
    }

  }
}
