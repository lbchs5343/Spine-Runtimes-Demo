package com.bytedance.sdk.openadsdk.downloadnew.core;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTDownloadEventModel {

    /* renamed from: d, reason: collision with root package name */
    private String f3736d;
    private String dq;
    private JSONObject ox;
    private JSONObject p;

    public static TTDownloadEventModel builder() {
        return new TTDownloadEventModel();
    }

    public JSONObject getExtJson() {
        return this.ox;
    }

    public String getLabel() {
        return this.f3736d;
    }

    public JSONObject getMaterialMeta() {
        return this.p;
    }

    public String getTag() {
        return this.dq;
    }

    public TTDownloadEventModel setExtJson(JSONObject jSONObject) {
        this.ox = jSONObject;
        return this;
    }

    public TTDownloadEventModel setLabel(String str) {
        this.f3736d = str;
        return this;
    }

    public TTDownloadEventModel setMaterialMeta(JSONObject jSONObject) {
        this.p = jSONObject;
        return this;
    }

    public TTDownloadEventModel setTag(String str) {
        this.dq = str;
        return this;
    }
}
