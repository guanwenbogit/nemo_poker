/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.api {
  public interface IPokerTable {
    function get max():int;
    function get current():int;
    function get players():Vector.<IPokerPlayer>;
    function appendPlayer(player:IPokerPlayer):void;
    function appendWatcher(player:IPokerPlayer):void;
    function removePlayer(player:IPokerPlayer):void;
    function removeWatcher(player:IPokerPlayer):void;
  }
}
