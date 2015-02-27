/**
 * Created by wbguan on 2015/2/27.
 */
package com.poker.texasPoker {
  import com.poker.api.IPokerPlayer;
  import com.poker.simple.ActionQueue;

  public class TexasQueue {
    private var _queue:ActionQueue;
    public function TexasQueue() {
      this._queue = new ActionQueue();
    }
    public function reset():void{
      this._queue.reset();
    }
    public function append(obj:IPokerPlayer):void{
      this._queue.append(obj);
    }

    public function remove(obj:IPokerPlayer):void{
      this._queue.remove(obj)
    }

    public function setHead(obj:IPokerPlayer):void{
      this._queue.setHead(obj);
    }

    public function get next():IPokerPlayer{
      var result:IPokerPlayer;
      result = this._queue.next as IPokerPlayer;
      return result;
    }

    public function getObjByIndex(index:int):IPokerPlayer{
      var result:IPokerPlayer;
      result = this._queue.getObjByIndex(index) as IPokerPlayer;
      return result;
    }

    public function get length():int{
      return this._queue.length;
    }
  }
}
