package io.yg.entity;

import java.io.Serializable;

public class DimUserActive implements Serializable {
    private String fromurl;

    private String ipaddress;

    private String pcsystemnameormobilebrandname;

    private String cityname;

    private Integer count;

    private String day;

    private String dim;

    private static final long serialVersionUID = 1L;

    public String getFromurl() {
        return fromurl;
    }

    public void setFromurl(String fromurl) {
        this.fromurl = fromurl == null ? null : fromurl.trim();
    }

    public String getIpaddress() {
        return ipaddress;
    }

    public void setIpaddress(String ipaddress) {
        this.ipaddress = ipaddress == null ? null : ipaddress.trim();
    }

    public String getPcsystemnameormobilebrandname() {
        return pcsystemnameormobilebrandname;
    }

    public void setPcsystemnameormobilebrandname(String pcsystemnameormobilebrandname) {
        this.pcsystemnameormobilebrandname = pcsystemnameormobilebrandname == null ? null : pcsystemnameormobilebrandname.trim();
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname == null ? null : cityname.trim();
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day == null ? null : day.trim();
    }

    public String getDim() {
        return dim;
    }

    public void setDim(String dim) {
        this.dim = dim == null ? null : dim.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        DimUserActive other = (DimUserActive) that;
        return (this.getFromurl() == null ? other.getFromurl() == null : this.getFromurl().equals(other.getFromurl()))
            && (this.getIpaddress() == null ? other.getIpaddress() == null : this.getIpaddress().equals(other.getIpaddress()))
            && (this.getPcsystemnameormobilebrandname() == null ? other.getPcsystemnameormobilebrandname() == null : this.getPcsystemnameormobilebrandname().equals(other.getPcsystemnameormobilebrandname()))
            && (this.getCityname() == null ? other.getCityname() == null : this.getCityname().equals(other.getCityname()))
            && (this.getCount() == null ? other.getCount() == null : this.getCount().equals(other.getCount()))
            && (this.getDay() == null ? other.getDay() == null : this.getDay().equals(other.getDay()))
            && (this.getDim() == null ? other.getDim() == null : this.getDim().equals(other.getDim()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getFromurl() == null) ? 0 : getFromurl().hashCode());
        result = prime * result + ((getIpaddress() == null) ? 0 : getIpaddress().hashCode());
        result = prime * result + ((getPcsystemnameormobilebrandname() == null) ? 0 : getPcsystemnameormobilebrandname().hashCode());
        result = prime * result + ((getCityname() == null) ? 0 : getCityname().hashCode());
        result = prime * result + ((getCount() == null) ? 0 : getCount().hashCode());
        result = prime * result + ((getDay() == null) ? 0 : getDay().hashCode());
        result = prime * result + ((getDim() == null) ? 0 : getDim().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", fromurl=").append(fromurl);
        sb.append(", ipaddress=").append(ipaddress);
        sb.append(", pcsystemnameormobilebrandname=").append(pcsystemnameormobilebrandname);
        sb.append(", cityname=").append(cityname);
        sb.append(", count=").append(count);
        sb.append(", day=").append(day);
        sb.append(", dim=").append(dim);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}