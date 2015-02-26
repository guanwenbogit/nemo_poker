/**
 * Created by wbguan on 2015/2/26.
 */
package com.poker.texasPoker {
  import com.poker.api.IPokerPlayer;
  import com.poker.simple.PokerTable;

  public class TexasTable extends PokerTable {

    public function TexasTable(max:int) {
      super(max);
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

  }
}
