/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.api {
  public interface IPokerPlayer {
    function get handsGroup():IComparable;
    function get role():String;
    function set role(value:String):void;
    function isDealer():Boolean;
    function isIdle():Boolean;
    function idle():void;
    function appendCard(card:IPlayingCard);
    function get ready():Boolean;
    function setUserData(data:Object):void;
  }
}
