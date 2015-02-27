/**
 * Created by wbguan on 2015/2/26.
 */
package com.poker.texasPoker {
  import com.poker.api.IPokerPlayer;
  import com.poker.simple.PokerTable;

  public class TexasTable extends PokerTable {

    private var _dealer:int = 0;
    public function TexasTable(max:int) {
      super(max);
    }

    public function setDealer(index:int):void{
      this._dealer = index;
    }
    public function nextDealer():void{
      this._dealer++;
      if(this._dealer == this._max){
        this._dealer = 0;
      }
    }
    public function getDealerPlayer():IPokerPlayer{
      var result:IPokerPlayer;
      result = this._seats[this._dealer];
      return result;
    }

    public function get players():Vector.<IPokerPlayer>{
      var result:Vector.<IPokerPlayer> = new Vector.<IPokerPlayer>();
      for(var i:int = 0 ;i<this._max;i++){
        var player:IPokerPlayer = this._seats[i];
        if(player != null){
          result.push(player);
        }
      }
      return result;
    }

    public function get dealer():int {
      return _dealer;
    }
  }
}
