/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.texasPoker {
  import com.poker.api.IPokerPlayer;

  public class BetPool {
    private var _sum:int = 0;
    private var _chip:int = 10;
    private var _mini:int = 0;
    private var _span:int = 0;
    private var _his:Array = [];
    private var _pool:Object = {}
    private var _index:int = 0;
    public function BetPool() {
    }

    private function updateMini(num:int):void{
      if(num > this._mini){
        this._mini = num;
      }
    }
    private function createUnit(player:IPokerPlayer,bet:int,name:String):BetUnit{
      var result:BetUnit;
      result = new BetUnit();
      result.player = player;
      result.bet = bet;
      result.name = name;
      return result;
    }
    private function appendSum(param:int,unit:BetUnit):void{
      this._sum += param;
      this._his.push(unit);
    }
    public function follow(player:IPokerPlayer):void{
      var unit:BetUnit = createUnit(player,this._mini,"follow");
      appendSum(this._mini,unit);
    }

    public function append(player:IPokerPlayer,bet:int):void{
      var unit:BetUnit = createUnit(player,bet,"append");
      appendSum(bet,unit);
      this._span = bet - this._mini;
      this._mini = bet;
    }

    public function showHands(player:IPokerPlayer,bet:int):void{
      var unit:BetUnit = createUnit(player,bet,"showHands");
      appendSum(bet,unit);
    }
    public function get sum():int {
      return _sum;
    }
    public function getSumByPlayer(player:IPokerPlayer):int{

    }
    public function get chip():int {
      return _chip;
    }

    public function get mini():int {
      return _mini;
    }
    public function clear():void{

    }

    public function get index():int {
      return _index;
    }

    public function get his():Array {
      return _his;
    }

    public function get span():int {
      return _span;
    }
  }
}
