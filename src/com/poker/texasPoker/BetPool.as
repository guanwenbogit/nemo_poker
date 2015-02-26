/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.texasPoker {
  public class BetPool {
    private var _reward:int = 0;
    private var _chip:int = 10;
    private var _mini:int = 0;
    public function BetPool() {
    }

    private function updateMini(num:int):void{
      if(num > this._mini){
        this._mini = num;
      }
    }
    public function appendReward(num:int):void{
      this.updateMini(num);
      _reward += num;
    }

    public function get reward():int {
      return _reward;
    }

    public function get chip():int {
      return _chip;
    }

    public function get mini():int {
      return _mini;
    }
    public function clear():void{

    }
  }
}
