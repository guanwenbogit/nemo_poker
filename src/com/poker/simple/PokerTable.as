/**
 * Created by wbguan on 2015/2/26.
 */
package com.poker.simple {
  import com.poker.api.IPokerPlayer;

  public class PokerTable {
    protected var _max:int = 0;
    private var _queue:ActionQueue;
    protected var _seats:Object = {};
    protected var _length:int = 0;

    public function PokerTable(max:int) {
      this._max = max;
      _queue = new ActionQueue();
      for(var i:int = 0;i<this._max;i++){
        _queue.append(i);
      }
    }

    public function appendAtIndex(obj:IPokerPlayer,index:int):void{
      if(index>=0&&index<_max&&_seats[index] == null&&obj!= null){
        this._seats[index] = obj
        _length++;
      }
    }

    public function setHead(index:int):void{
      _queue.setHead(index);
    }
    // find next not empty seat
    public function next():IPokerPlayer{
      var result:IPokerPlayer;
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
      if(this._seats[index] != null) {
        this._seats[index] = null;
        _length--;
      }
    }
    public function remove(obj:Object):void{
      for(var i:int = 0;i<this._max;i++){
        if(this._seats[i] == obj && obj!= null){
          this._seats[i] = null;
          _length--;
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

    public function get max():int {
      return _max;
    }
  }
}
