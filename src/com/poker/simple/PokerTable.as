/**
 * Created by wbguan on 2015/2/26.
 */
package com.poker.simple {
  import com.poker.api.IPokerPlayer;

  public class PokerTable {
    protected var _max:int = 0;
    private var _queue:ActionQueue;
    protected var _seats:Object = {};

    public function PokerTable(max:int) {
      this._max = max;
      _queue = new ActionQueue();
      for(var i:int = 0;i<this._max;i++){
        _queue.append(i);
        _seats[i] = null;
      }
    }

    public function appendAtIndex(obj:Object,index:int):void{
      if(index>=0&&index<_max&&_seats[index] == null){
        this._seats[index] = obj
      }
    }

    public function setHead(index:int):void{
      _queue.setHead(index);
    }

    public function next():Object{
      var result:Object;
      var i:Object = this._queue.next;
      var j:int = 0;
      while(this._seats[i]==null && j < this._queue.length){
        i = this._queue.next;
        j++;
      }
      result = this._seats[i];
      return result;
    }
    public function removeAtIndex(index:int):void{
      this._seats[index] = null;
    }
    public function remove(obj:Object):void{
      for(var i:int = 0;i<this._max;i++){
        if(this._seats[i] == obj){
          this._seats[i] = null;
        }
      }
    }
    public function getAtIndex(index:int):Object{
      var result:Object;
      if(index>=0&&index<_max) {
        result = _seats[index];
      }
      return result;
    }

  }
}
