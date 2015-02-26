/**
 * Created by wbguan on 2015/2/26.
 */
package com.util.list {
  public class Note extends Object {
    private var _next:Note;
    public function Note() {
      super();
    }

    public function get next():Note {
      return _next;
    }

    public function set next(value:Note):void {
      _next = value;
    }
  }
}
