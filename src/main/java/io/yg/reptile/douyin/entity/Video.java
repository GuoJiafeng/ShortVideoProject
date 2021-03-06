/**
  * Copyright 2019 bejson.com 
  */
package io.yg.reptile.douyin.entity;
import java.util.List;

/**
 * Auto-generated: 2019-04-17 17:35:6
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Video {

    private Play_addr play_addr;
    private Cover cover;
    private int height;
    private int width;
    private Dynamic_cover dynamic_cover;
    private Origin_cover origin_cover;
    private String ratio;
    private Download_addr download_addr;
    private boolean has_watermark;
    private Play_addr_lowbr play_addr_lowbr;
    private List<Bit_rate> bit_rate;
    private int duration;
    private Play_addr_265 play_addr_265;
    private int is_h265;
    private Play_addr_h264 play_addr_h264;
    public void setPlay_addr(Play_addr play_addr) {
         this.play_addr = play_addr;
     }
     public Play_addr getPlay_addr() {
         return play_addr;
     }

    public void setCover(Cover cover) {
         this.cover = cover;
     }
     public Cover getCover() {
         return cover;
     }

    public void setHeight(int height) {
         this.height = height;
     }
     public int getHeight() {
         return height;
     }

    public void setWidth(int width) {
         this.width = width;
     }
     public int getWidth() {
         return width;
     }

    public void setDynamic_cover(Dynamic_cover dynamic_cover) {
         this.dynamic_cover = dynamic_cover;
     }
     public Dynamic_cover getDynamic_cover() {
         return dynamic_cover;
     }

    public void setOrigin_cover(Origin_cover origin_cover) {
         this.origin_cover = origin_cover;
     }
     public Origin_cover getOrigin_cover() {
         return origin_cover;
     }

    public void setRatio(String ratio) {
         this.ratio = ratio;
     }
     public String getRatio() {
         return ratio;
     }

    public void setDownload_addr(Download_addr download_addr) {
         this.download_addr = download_addr;
     }
     public Download_addr getDownload_addr() {
         return download_addr;
     }

    public void setHas_watermark(boolean has_watermark) {
         this.has_watermark = has_watermark;
     }
     public boolean getHas_watermark() {
         return has_watermark;
     }

    public void setPlay_addr_lowbr(Play_addr_lowbr play_addr_lowbr) {
         this.play_addr_lowbr = play_addr_lowbr;
     }
     public Play_addr_lowbr getPlay_addr_lowbr() {
         return play_addr_lowbr;
     }

    public void setBit_rate(List<Bit_rate> bit_rate) {
         this.bit_rate = bit_rate;
     }
     public List<Bit_rate> getBit_rate() {
         return bit_rate;
     }

    public void setDuration(int duration) {
         this.duration = duration;
     }
     public int getDuration() {
         return duration;
     }

    public void setPlay_addr_265(Play_addr_265 play_addr_265) {
         this.play_addr_265 = play_addr_265;
     }
     public Play_addr_265 getPlay_addr_265() {
         return play_addr_265;
     }

    public void setIs_h265(int is_h265) {
         this.is_h265 = is_h265;
     }
     public int getIs_h265() {
         return is_h265;
     }

    public void setPlay_addr_h264(Play_addr_h264 play_addr_h264) {
         this.play_addr_h264 = play_addr_h264;
     }
     public Play_addr_h264 getPlay_addr_h264() {
         return play_addr_h264;
     }

}