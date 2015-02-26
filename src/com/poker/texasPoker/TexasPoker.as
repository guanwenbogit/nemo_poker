/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.texasPoker {
  import com.model.Player;
  import com.poker.api.IPokerLibrary;
  import com.poker.api.IPokerPlayer;
  import com.poker.api.IPokerTable;
  import com.poker.api.IPokers;
  import com.poker.simple.ActionQueue;

  import com.poker.simple.cardLib.PokerLib;

  import flash.events.EventDispatcher;

  public class TexasPoker extends EventDispatcher implements IPokers {
    private var _pokerLib:IPokerLibrary;
    private var _players:Vector.<IPokerPlayer> = new Vector.<IPokerPlayer>();
    private var _flow:TexasFlow;
    private var _miniChip:int = 10;
    private var _betPool:BetPool;
    private var _table:TexasTable;

    public function TexasPoker() {
      initInstance();
    }
    private function initInstance():void{
      this._pokerLib = new PokerLib();
      this._flow = new TexasFlow();
      this._betPool = new BetPool();
    }
    protected function createPlayer(userData:Object):IPokerPlayer{
      var result:Player;
      result = new Player();
      result.setUserData(userData);
      return result;
    }
    public function appendPlayer(userData:Object):void{
      var player:IPokerPlayer = createPlayer(userData);
      this._players.push(player);
    }

    public function start():void{
      if(checkPlayers()){
        setFlow();
      }
    }

    private function setFlow():void {
      this._flow.init(this._table,_betPool);
    }

    private function checkPlayers():Boolean{
      var result:Boolean = true;
      for each(var player:IPokerPlayer in this._players){
        if(!player.ready){
          result = false;
          break;
        }
      }
      return result;
    }
  }
}
