package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class vf {

    /* renamed from: d, reason: collision with root package name */
    private String f3518d;
    private String dq;
    private String ox;

    public String d() {
        return this.f3518d;
    }

    public void d(String str) {
        this.f3518d = str;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public String ox() {
        return this.ox;
    }

    public void ox(String str) {
        this.ox = str;
    }

    public JSONObject p() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("group_id", dq());
            jSONObject.put("group_tag", d());
            jSONObject.put("card_tag", ox());
            return jSONObject;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d(e2.toString());
            return jSONObject;
        }
    }
}
