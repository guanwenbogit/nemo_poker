/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.api {


  public interface IPokerLibrary {
    function get card():Vector.<IPlayingCard>;
    function getCardsByPoint(point:int):Vector.<IPlayingCard>;
    function getCardsBySuit(suit:String):Vector.<IPlayingCard>;
    function getCards(point:int,suit:String):Vector.<IPlayingCard>;
    function getRandomCards(count:int):Vector.<IPlayingCard>;
    function getDeadCards():Vector.<IPlayingCard>;
    function getRemainingCard():Vector.<IPlayingCard>;
    function sendRandomCards(count:int):Vector.<IPlayingCard>;
  }
}
