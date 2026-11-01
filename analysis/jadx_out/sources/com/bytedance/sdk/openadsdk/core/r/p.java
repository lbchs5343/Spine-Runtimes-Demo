package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private String f3505d;
    private String dq;
    private int iw;
    private String mn;
    private String ox;
    private int p;
    private int s;

    public String d() {
        return this.dq;
    }

    public void d(int i) {
        this.s = i;
    }

    public void d(String str) {
        this.dq = str;
    }

    public String dq() {
        return this.mn;
    }

    public void dq(int i) {
        this.p = i;
    }

    public void dq(String str) {
        this.mn = str;
    }

    public JSONObject ia() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", ox());
            jSONObject.put("app_size", mn());
            jSONObject.put("comment_num", iw());
            jSONObject.put("download_url", d());
            jSONObject.put("package_name", p());
            jSONObject.put("score", s());
            return jSONObject;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d(e2.toString());
            return jSONObject;
        }
    }

    public int iw() {
        return this.s;
    }

    public int mn() {
        return this.iw;
    }

    public String ox() {
        return this.f3505d;
    }

    public void ox(int i) {
        this.iw = i;
    }

    public void ox(String str) {
        this.f3505d = str;
    }

    public String p() {
        return this.ox;
    }

    public void p(String str) {
        this.ox = str;
    }

    public int s() {
        return this.p;
    }
}
