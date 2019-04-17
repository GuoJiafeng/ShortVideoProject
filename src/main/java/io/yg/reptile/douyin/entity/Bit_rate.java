/**
  * Copyright 2019 bejson.com 
  */
package io.yg.reptile.douyin.entity;

/**
 * Auto-generated: 2019-04-17 17:35:6
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Bit_rate {

    private String gear_name;
    private int quality_type;
    private long bit_rate;
    private Play_addr play_addr;
    private int is_h265;
    private Play_addr_265 play_addr_265;
    public void setGear_name(String gear_name) {
         this.gear_name = gear_name;
     }
     public String getGear_name() {
         return gear_name;
     }

    public void setQuality_type(int quality_type) {
         this.quality_type = quality_type;
     }
     public int getQuality_type() {
         return quality_type;
     }

    public void setBit_rate(long bit_rate) {
         this.bit_rate = bit_rate;
     }
     public long getBit_rate() {
         return bit_rate;
     }

    public void setPlay_addr(Play_addr play_addr) {
         this.play_addr = play_addr;
     }
     public Play_addr getPlay_addr() {
         return play_addr;
     }

    public void setIs_h265(int is_h265) {
         this.is_h265 = is_h265;
     }
     public int getIs_h265() {
         return is_h265;
     }

    public void setPlay_addr_265(Play_addr_265 play_addr_265) {
         this.play_addr_265 = play_addr_265;
     }
     public Play_addr_265 getPlay_addr_265() {
         return play_addr_265;
     }

}