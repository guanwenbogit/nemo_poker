/**
 * Created by wbguan on 2015/2/26.
 */
package com.util.list {
  public class CircleList extends List {
    public function CircleList() {
      super();
    }
    public function append(note:Note):void{
      if(this._head == null){
        this._head = note;
        this._last = this._head;
        this._head.next = _last;
      }else{
        note.next = _last.next;
        _last.next = note;
      }
    }
    public function remove(note:Note):void{
      var tmp:Note = this._head;
      var prev:Note = null;
      do{
        if(tmp == note){

        }
      }while(tmp.next != this._head);
    }

  }
}
