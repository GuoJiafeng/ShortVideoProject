package io.yg.entity;

import java.io.Serializable;
import java.util.Date;

public class VideoContent implements Serializable {
    private String vcId;

    private String vcAuthor;

    private String vcDetail;

    private String vcShareurl;

    private String vcFrom;

    private String vcType;

    private Date vcCreatetime;

    private String reservedField01;

    private String reservedField02;

    private String reservedField03;

    private String reservedField04;

    private String reservedField05;

    private static final long serialVersionUID = 1L;

    public String getVcId() {
        return vcId;
    }

    public void setVcId(String vcId) {
        this.vcId = vcId == null ? null : vcId.trim();
    }

    public String getVcAuthor() {
        return vcAuthor;
    }

    public void setVcAuthor(String vcAuthor) {
        this.vcAuthor = vcAuthor == null ? null : vcAuthor.trim();
    }

    public String getVcDetail() {
        return vcDetail;
    }

    public void setVcDetail(String vcDetail) {
        this.vcDetail = vcDetail == null ? null : vcDetail.trim();
    }

    public String getVcShareurl() {
        return vcShareurl;
    }

    public void setVcShareurl(String vcShareurl) {
        this.vcShareurl = vcShareurl == null ? null : vcShareurl.trim();
    }

    public String getVcFrom() {
        return vcFrom;
    }

    public void setVcFrom(String vcFrom) {
        this.vcFrom = vcFrom == null ? null : vcFrom.trim();
    }

    public String getVcType() {
        return vcType;
    }

    public void setVcType(String vcType) {
        this.vcType = vcType == null ? null : vcType.trim();
    }

    public Date getVcCreatetime() {
        return vcCreatetime;
    }

    public void setVcCreatetime(Date vcCreatetime) {
        this.vcCreatetime = vcCreatetime;
    }

    public String getReservedField01() {
        return reservedField01;
    }

    public void setReservedField01(String reservedField01) {
        this.reservedField01 = reservedField01 == null ? null : reservedField01.trim();
    }

    public String getReservedField02() {
        return reservedField02;
    }

    public void setReservedField02(String reservedField02) {
        this.reservedField02 = reservedField02 == null ? null : reservedField02.trim();
    }

    public String getReservedField03() {
        return reservedField03;
    }

    public void setReservedField03(String reservedField03) {
        this.reservedField03 = reservedField03 == null ? null : reservedField03.trim();
    }

    public String getReservedField04() {
        return reservedField04;
    }

    public void setReservedField04(String reservedField04) {
        this.reservedField04 = reservedField04 == null ? null : reservedField04.trim();
    }

    public String getReservedField05() {
        return reservedField05;
    }

    public void setReservedField05(String reservedField05) {
        this.reservedField05 = reservedField05 == null ? null : reservedField05.trim();
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
        VideoContent other = (VideoContent) that;
        return (this.getVcId() == null ? other.getVcId() == null : this.getVcId().equals(other.getVcId()))
            && (this.getVcAuthor() == null ? other.getVcAuthor() == null : this.getVcAuthor().equals(other.getVcAuthor()))
            && (this.getVcDetail() == null ? other.getVcDetail() == null : this.getVcDetail().equals(other.getVcDetail()))
            && (this.getVcShareurl() == null ? other.getVcShareurl() == null : this.getVcShareurl().equals(other.getVcShareurl()))
            && (this.getVcFrom() == null ? other.getVcFrom() == null : this.getVcFrom().equals(other.getVcFrom()))
            && (this.getVcType() == null ? other.getVcType() == null : this.getVcType().equals(other.getVcType()))
            && (this.getVcCreatetime() == null ? other.getVcCreatetime() == null : this.getVcCreatetime().equals(other.getVcCreatetime()))
            && (this.getReservedField01() == null ? other.getReservedField01() == null : this.getReservedField01().equals(other.getReservedField01()))
            && (this.getReservedField02() == null ? other.getReservedField02() == null : this.getReservedField02().equals(other.getReservedField02()))
            && (this.getReservedField03() == null ? other.getReservedField03() == null : this.getReservedField03().equals(other.getReservedField03()))
            && (this.getReservedField04() == null ? other.getReservedField04() == null : this.getReservedField04().equals(other.getReservedField04()))
            && (this.getReservedField05() == null ? other.getReservedField05() == null : this.getReservedField05().equals(other.getReservedField05()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getVcId() == null) ? 0 : getVcId().hashCode());
        result = prime * result + ((getVcAuthor() == null) ? 0 : getVcAuthor().hashCode());
        result = prime * result + ((getVcDetail() == null) ? 0 : getVcDetail().hashCode());
        result = prime * result + ((getVcShareurl() == null) ? 0 : getVcShareurl().hashCode());
        result = prime * result + ((getVcFrom() == null) ? 0 : getVcFrom().hashCode());
        result = prime * result + ((getVcType() == null) ? 0 : getVcType().hashCode());
        result = prime * result + ((getVcCreatetime() == null) ? 0 : getVcCreatetime().hashCode());
        result = prime * result + ((getReservedField01() == null) ? 0 : getReservedField01().hashCode());
        result = prime * result + ((getReservedField02() == null) ? 0 : getReservedField02().hashCode());
        result = prime * result + ((getReservedField03() == null) ? 0 : getReservedField03().hashCode());
        result = prime * result + ((getReservedField04() == null) ? 0 : getReservedField04().hashCode());
        result = prime * result + ((getReservedField05() == null) ? 0 : getReservedField05().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", vcId=").append(vcId);
        sb.append(", vcAuthor=").append(vcAuthor);
        sb.append(", vcDetail=").append(vcDetail);
        sb.append(", vcShareurl=").append(vcShareurl);
        sb.append(", vcFrom=").append(vcFrom);
        sb.append(", vcType=").append(vcType);
        sb.append(", vcCreatetime=").append(vcCreatetime);
        sb.append(", reservedField01=").append(reservedField01);
        sb.append(", reservedField02=").append(reservedField02);
        sb.append(", reservedField03=").append(reservedField03);
        sb.append(", reservedField04=").append(reservedField04);
        sb.append(", reservedField05=").append(reservedField05);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}