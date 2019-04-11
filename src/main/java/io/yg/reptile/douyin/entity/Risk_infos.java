/**
  * Copyright 2018 bejson.com 
  */
package io.yg.reptile.douyin.entity;

/**
 * Auto-generated: 2018-07-31 14:19:29
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Risk_infos {

    private boolean vote;
    private boolean warn;
    private String content;
    private boolean risk_sink;
    private int type;
    public void setVote(boolean vote) {
         this.vote = vote;
     }
     public boolean getVote() {
         return vote;
     }

    public void setWarn(boolean warn) {
         this.warn = warn;
     }
     public boolean getWarn() {
         return warn;
     }

    public void setContent(String content) {
         this.content = content;
     }
     public String getContent() {
         return content;
     }

    public void setRisk_sink(boolean risk_sink) {
         this.risk_sink = risk_sink;
     }
     public boolean getRisk_sink() {
         return risk_sink;
     }

    public void setType(int type) {
         this.type = type;
     }
     public int getType() {
         return type;
     }

}