/**
 * Created by wbguan on 2015/2/26.
 */
package com.poker.simple {
  public class ActionQueue extends Object {
    private var _actions:Array = [];
    private var _ohead:Object;
    public function ActionQueue() {
      super();
    }
    public function reset():void{
      var obj:Object  = _actions[0];
      while(obj != _ohead){
        obj = _actions.shift();
        _actions.push(obj);
        obj = _actions[0];
      }
    }
    public function append(obj:Object):void{
      _actions.push(obj);
    }

    public function remove(obj:Object):void{
      var index:int = this._actions.indexOf(obj);
      if(index>=0){
        this._actions = this._actions.splice(index,1);
        if(_ohead == obj){
          _ohead = this._actions[0];
        }
      }
    }

    public function setHead(obj:Object):void{
      var index:int = this._actions.indexOf(obj);
      if(index >=0){
        this._ohead = obj;
        reset();
      }
    }

    public function get next():Object{
      var obj:Object = _actions.shift();
      _actions.push(obj);
      return obj;
    }

    public function getObjByIndex(index:int):Object{
      var result:Object;
      if(index>=0&&index<this._actions.length){
        result = this._actions[index];
      }
      return result;
    }

    public function get length():int{
      return this._actions.length;
    }

  }
}
