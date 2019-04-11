/**
  * Copyright 2018 bejson.com 
  */
package io.yg.reptile.douyin.entity;
import java.util.List;

/**
 * Auto-generated: 2018-07-31 14:19:29
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Extra {

    private String logid;
    private long now;
    private List<String> fatal_item_ids;
    public void setLogid(String logid) {
         this.logid = logid;
     }
     public String getLogid() {
         return logid;
     }

    public void setNow(long now) {
         this.now = now;
     }
     public long getNow() {
         return now;
     }

    public void setFatal_item_ids(List<String> fatal_item_ids) {
         this.fatal_item_ids = fatal_item_ids;
     }
     public List<String> getFatal_item_ids() {
         return fatal_item_ids;
     }

}