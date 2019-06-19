package io.yg.controller;

import io.yg.echartsDTO.*;
import io.yg.entity.DimUserActive;
import io.yg.service.DimUserActiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("DimUserActiveController")
public class DimUserActiveController {

    @Autowired

    private DimUserActiveService dimUserActiveService;

    @RequestMapping("showUser")

    public @ResponseBody
    JsonRootBean showUser(String day, String dim) {


        List<DimUserActive> dimUserActives = dimUserActiveService.showUserByDateAndDim(day, dim);

        JsonRootBean jsonRootBean = new JsonRootBean();

        Title title = new Title();
        title.setSubtext("来自GJF");
        title.setText("日活信息显示");


        Tooltip tooltip = new Tooltip();
        tooltip.setTrigger("axis");

        Legend legend = new Legend();


        Toolbox toolbox = new Toolbox();
        toolbox.setShow(true);


        Feature feature = new Feature();
        DataView dataView = new DataView();
        dataView.setReadOnly(false);
        dataView.setShow(true);
        feature.setDataView(dataView);


        MagicType magicType = new MagicType();
        magicType.setShow(true);
        List<String> type = new ArrayList<String>();
        type.add("line");
        type.add("bar");
        magicType.setType(type);
        feature.setMagicType(magicType);


        Mark mark = new Mark();
        mark.setShow(true);
        feature.setMark(mark);


        Restore restore = new Restore();
        restore.setShow(true);

        feature.setRestore(restore);


        SaveAsImage saveAsImage = new SaveAsImage();
        saveAsImage.setShow(true);
        feature.setSaveAsImage(saveAsImage);


        toolbox.setFeature(feature);

        jsonRootBean.setCalculable(true);

        XAxis xAxis = new XAxis();
        xAxis.setBoundaryGap(false);


        xAxis.setType("category");

        List<String> xdata = new ArrayList<String>();


        xAxis.setData(xdata);


        YAxis yAxis = new YAxis();
        AxisLabel axisLabel = new AxisLabel();
        axisLabel.setFormatter("{value} 人");
        yAxis.setAxisLabel(axisLabel);
        yAxis.setType("value");


        List<Integer> integersdata = new ArrayList<Integer>();
        List<Series> series1 = new Stack<Series>();
        Series series = new Series();
        for (DimUserActive dimUserActive : dimUserActives) {


            String fromurl = dimUserActive.getFromurl();
            String cityname = dimUserActive.getCityname();
            String ipaddress = dimUserActive.getIpaddress();
            String pcsystemnameormobilebrandname = dimUserActive.getPcsystemnameormobilebrandname();
            String dayString = dimUserActive.getDay();
            Integer count = dimUserActive.getCount();
            List<String> lengeddata = new ArrayList<String>();

            //all
            if (dim.equals("0000")) {


                lengeddata.add("all");
                integersdata.add(count);
                series.setName("all");
                series.setType("line");
                series.setData(integersdata);


            }

            //fromurl
            if (dim.equals("1000")) {
                xdata.add(fromurl);
                lengeddata.add(dayString);
                integersdata.add(count);
                series.setName(dayString);
                series.setType("line");


            }

            //ipaddress
            if (dim.equals("0100")) {

                xdata.add(ipaddress);
                lengeddata.add(dayString);
                integersdata.add(count);
                series.setName(dayString);
                series.setType("line");


            }

            //pcsystemnameormobilebrandname
            if (dim.equals("0010")) {

                xdata.add(pcsystemnameormobilebrandname);
                lengeddata.add(dayString);
                integersdata.add(count);
                series.setName(dayString);
                series.setType("line");

            }

            //cityname
            if (dim.equals("0001")) {

                xdata.add(cityname);
                lengeddata.add(dayString);
                integersdata.add(count);
                series.setName(dayString);
                series.setType("line");


            }
            series.setData(integersdata);
            legend.setData(lengeddata);

        }
        series1.add(series);

        jsonRootBean.setTitle(title);
        jsonRootBean.setLegend(legend);
        jsonRootBean.setToolbox(toolbox);

        List<XAxis> xAxes = new ArrayList<XAxis>();
        xAxes.add(xAxis);
        jsonRootBean.setXAxis(xAxes);


        List<YAxis> yAxes = new ArrayList<YAxis>();

        yAxes.add(yAxis);

        jsonRootBean.setYAxis(yAxes);


        jsonRootBean.setTooltip(tooltip);


        jsonRootBean.setSeries(series1);

        return jsonRootBean;

    }
}
