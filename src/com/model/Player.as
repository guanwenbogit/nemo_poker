/**
 * Created by wbguan on 2015/2/25.
 */
package com.model {
  import com.poker.api.IComparable;
  import com.poker.api.IPlayingCard;
  import com.poker.api.IPokerPlayer;
  import com.poker.simple.card.PokerCardGroup;

  public class Player implements IPokerPlayer{

    protected var _userdata:Object;
    private var _handsGroup:PokerCardGroup;
    private var _ready:Boolean = false;
    private var _role:String = "";
    public function Player() {

    }

    public function setUserData(param:Object):void{
      this._userdata = param;
    }

    public function attachGroup(group:PokerCardGroup):void{
      this._handsGroup = group;
    }
    public function get handsGroup():IComparable {
      return _handsGroup;
    }

    public function get ready():Boolean {
      return _ready;
    }

    public function get role():String {
      return "";
    }

    public function isDealer():Boolean {
      return false;
    }

    public function set role(value:String):void {
      _role = value;
    }

    public function isIdle():Boolean {
      return false;
    }

    public function idle():void {
    }

    public function appendCard(card:IPlayingCard) {
    }
  }
}
