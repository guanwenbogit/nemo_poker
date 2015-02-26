/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.texasPoker.events {
  import flash.events.Event;

  public class TexasEvent extends Event {
    public function TexasEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false) {
      super(type, bubbles, cancelable);
    }
    override public function clone():Event{
      return new TexasEvent(this.type,bubbles,cancelable);
    }
  }
}
