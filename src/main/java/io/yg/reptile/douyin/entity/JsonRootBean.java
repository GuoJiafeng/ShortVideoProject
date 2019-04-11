/**
  * Copyright 2018 bejson.com 
  */
package io.yg.reptile.douyin.entity;
import java.util.List;

/**
 * Auto-generated: 2018-07-31 14:41:10
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class JsonRootBean {

    private Log_pb log_pb;
    private Extra extra;
    private boolean has_more;
    private int status_code;
    private List<Followings> followings;
    private List<Aweme_list> aweme_list;
    private long max_time;
    private int offset;
    private long min_time;
    private int total;
    private String myself_user_id;

    public boolean isHas_more() {
        return has_more;
    }

    public List<Aweme_list> getAweme_lists() {
        return aweme_list;
    }

    public void setAweme_lists(List<Aweme_list> aweme_lists) {
        this.aweme_list = aweme_lists;
    }

    public void setLog_pb(Log_pb log_pb) {
         this.log_pb = log_pb;
     }
     public Log_pb getLog_pb() {
         return log_pb;
     }

    public void setExtra(Extra extra) {
         this.extra = extra;
     }
     public Extra getExtra() {
         return extra;
     }

    public void setHas_more(boolean has_more) {
         this.has_more = has_more;
     }
     public boolean getHas_more() {
         return has_more;
     }

    public void setStatus_code(int status_code) {
         this.status_code = status_code;
     }
     public int getStatus_code() {
         return status_code;
     }

    public void setFollowings(List<Followings> followings) {
         this.followings = followings;
     }
     public List<Followings> getFollowings() {
         return followings;
     }

    public void setMax_time(long max_time) {
         this.max_time = max_time;
     }
     public long getMax_time() {
         return max_time;
     }

    public void setOffset(int offset) {
         this.offset = offset;
     }
     public int getOffset() {
         return offset;
     }

    public void setMin_time(long min_time) {
         this.min_time = min_time;
     }
     public long getMin_time() {
         return min_time;
     }

    public void setTotal(int total) {
         this.total = total;
     }
     public int getTotal() {
         return total;
     }

    public void setMyself_user_id(String myself_user_id) {
         this.myself_user_id = myself_user_id;
     }
     public String getMyself_user_id() {
         return myself_user_id;
     }

}