/**
  * Copyright 2018 bejson.com 
  */
package io.yg.echartsDTO;
import java.util.Date;
import java.util.List;

/**
 * Auto-generated: 2018-10-26 17:9:24
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Series {

    private String name;
    private String type;

    private List<Integer> data;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<Integer> getData() {
        return data;
    }

    public void setData(List<Integer> data) {
        this.data = data;
    }

    public String getType() {
        return type;
    }
}
