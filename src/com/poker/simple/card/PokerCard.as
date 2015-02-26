/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.simple.card {
  import com.poker.api.IComparable;
  import com.poker.api.IPlayingCard;

  public class PokerCard implements IPlayingCard, IComparable{
    private var _point:int = 0;
    private var _suit:String = "";
    private var _id:int = 0;
    public function PokerCard(id:int) {
      this._id = id;
    }
    public function setCard(point:int,suit:String):void{
      if(point>0&&point<14){
        this._point = point;
      }
      this._suit = suit;
    }
    public function compare(card:IComparable):Boolean {
      return false;
    }

    public function get point():int {
      return this._point;
    }

    public function get suit():String {
      return this._suit;
    }

    public function get id():int {
      return _id;
    }

    public function get priority():int {
      return 0;
    }
  }
}
