/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.texasPoker {
  import com.poker.api.IPokerPlayer;
  import com.poker.simple.ActionQueue;
  import com.poker.texasPoker.TexasTable;

  public class TexasFlow {
    private var _players:Vector.<IPokerPlayer>;
    private var _dealer:Object;
    private var _blind1:Object;
    private var _blind2:Object;
    private var _queue:ActionQueue;
    private var _betPool:BetPool;
    private var _state:String = "";
    private var _currentBlind:int = 0;
    private var _table:TexasTable;
    public function TexasFlow() {

    }

    public function init(table:TexasTable,betPool:BetPool):void {
      this._players = table.players;
      _betPool = betPool;
      this._table = table;
      setQueue();
      setDealer();
    }
    public function restart():void{
      this._betPool.clear();
      resetDealer();
      
    }
    private function resetDealer():void {
      this._queue.setHead(this._dealer);
    }
    private function setQueue():void {
      for each(var p:IPokerPlayer in this._players){
        this._queue.append(p);
      }
    }

    private function setDealer():void{
      var index:int = Math.floor(Math.random()*this._players.length);
      this._dealer = this._players[index];
      this._queue.setHead(this._dealer);
      if(this._queue.length > 2){
        this._blind1 = this._queue.getObjByIndex(1);
        this._blind2 = this._queue.getObjByIndex(2);
      }else{
        this._blind1 = this._dealer;
        this._blind2 = this._queue.getObjByIndex(1);
      }
    }

    private function autoBet(player:Object,num:int):void{
      this.appendReward(num);
    }
    private function action(player:Object):void{

    }
    public function appendReward(num:int):void{
      this._betPool.appendReward(num);
    }
    public function blind():void{
      this._queue.setHead(this._blind1);
      autoBet(this._queue.next,this._betPool.chip/2);
      autoBet(this._queue.next,this._betPool.chip);
    }
    public function perFlop():void{
      this._state = TexasStates.PERFLOP;
      sendHands();
      action(this._queue.next);
    }

    public function flop():void{
      this._state = TexasStates.FLOP;
      this._queue.reset();
      sendPub(3);
      action(this._queue.next);
    }
    public function turn():void{
      this._state = TexasStates.TURN;
      this._queue.reset();
      sendPub(1);
      action(this._queue.next);
    }
    
    public function river():void{
      this._state = TexasStates.RIVER;
      this._queue.reset();
      sendPub(1);
      action(this._queue.next);
    }
    private function sendHands():void{

    }
    private function sendPub(i:int):void {

    }

  }
}
