/**
  * Copyright 2018 bejson.com 
  */
package io.yg.echartsDTO;
import java.util.List;

/**
 * Auto-generated: 2018-10-26 17:9:24
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class XAxis {

    private String type;
    private boolean boundaryGap;
    private List<String> data;
    public void setType(String type) {
         this.type = type;
     }
     public String getType() {
         return type;
     }

    public void setBoundaryGap(boolean boundaryGap) {
         this.boundaryGap = boundaryGap;
     }
     public boolean getBoundaryGap() {
         return boundaryGap;
     }

    public void setData(List<String> data) {
         this.data = data;
     }
     public List<String> getData() {
         return data;
     }

}