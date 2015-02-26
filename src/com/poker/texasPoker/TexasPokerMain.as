/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.texasPoker {
  import com.model.Player;
  import com.poker.api.ICompare;
  import com.poker.api.IFlow;
  import com.poker.api.IPokerLibrary;
  import com.poker.api.IPokerPlayer;
  import com.poker.simple.cardLib.PokerLib;

  public class TexasPokerMain {
    private var _player:Vector.<IPokerPlayer>;
    private var _button:IPokerPlayer;
    private var _bigBlind:IPokerPlayer;
    private var _smallBlind:IPokerPlayer;
    private var _lib:IPokerLibrary;
    private var _betFlow:BetPool;


    public function TexasPokerMain() {
      initInstance();
    }
    private function initInstance():void{
      this._player = new  Vector.<IPokerPlayer>();
      this._lib = new PokerLib();
      this._betFlow = new BetPool();
    }

    public function start():void{

    }

    private function setRole():void{

    }

    private function bindBet():void{

    }

    public function appendUser(player:IPokerPlayer):void{
      _player.push(player);
    }
    public function removeUser(player:IPokerPlayer):void{
      var index:int = this._player.indexOf(player);
      if(index>=0){
        this._player = this._player.splice(index,1);
      }
    }

  }
}
