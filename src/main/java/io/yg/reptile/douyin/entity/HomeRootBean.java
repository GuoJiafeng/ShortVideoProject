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
public class HomeRootBean {

    private long max_cursor;
    private List<Aweme_list> aweme_list;
    private Extra extra;
    private int has_more;
    private int status_code;
    private long min_cursor;
    private Log_pb log_pb;
    public void setMax_cursor(long max_cursor) {
         this.max_cursor = max_cursor;
     }
     public long getMax_cursor() {
         return max_cursor;
     }

    public void setAweme_list(List<Aweme_list> aweme_list) {
         this.aweme_list = aweme_list;
     }
     public List<Aweme_list> getAweme_list() {
         return aweme_list;
     }

    public void setExtra(Extra extra) {
         this.extra = extra;
     }
     public Extra getExtra() {
         return extra;
     }

    public void setHas_more(int has_more) {
         this.has_more = has_more;
     }
     public int getHas_more() {
         return has_more;
     }

    public void setStatus_code(int status_code) {
         this.status_code = status_code;
     }
     public int getStatus_code() {
         return status_code;
     }

    public void setMin_cursor(long min_cursor) {
         this.min_cursor = min_cursor;
     }
     public long getMin_cursor() {
         return min_cursor;
     }

    public void setLog_pb(Log_pb log_pb) {
         this.log_pb = log_pb;
     }
     public Log_pb getLog_pb() {
         return log_pb;
     }

}