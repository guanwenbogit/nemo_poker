/**
 * Created by wbguan on 2015/2/25.
 */
package com.poker.api {
  public interface IComparable {
    function get priority():int ;
    function compare(target:Object):Boolean;
  }
}
