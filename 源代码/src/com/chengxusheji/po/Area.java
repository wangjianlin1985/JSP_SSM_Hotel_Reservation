package com.chengxusheji.po;

import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

public class Area {
    /*旅游类别id*/
    private Integer areaId;
    public Integer getAreaId(){
        return areaId;
    }
    public void setAreaId(Integer areaId){
        this.areaId = areaId;
    }

    /*旅游类别名称*/
    @NotEmpty(message="旅游类别名称不能为空")
    private String areanName;
    public String getAreanName() {
        return areanName;
    }
    public void setAreanName(String areanName) {
        this.areanName = areanName;
    }

    public JSONObject getJsonObject() throws JSONException {
    	JSONObject jsonArea=new JSONObject(); 
		jsonArea.accumulate("areaId", this.getAreaId());
		jsonArea.accumulate("areanName", this.getAreanName());
		return jsonArea;
    }}