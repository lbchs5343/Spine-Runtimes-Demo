package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class io {

    /* renamed from: d, reason: collision with root package name */
    private int f3452d;
    private String dq;
    private String ia;
    private int iw;
    private String mn;
    private String ox;
    private String p;
    private int s;

    public static io dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        io ioVar = new io();
        try {
            ioVar.dq(jSONObject.optInt("wc_skip_type"));
            ioVar.dq(jSONObject.optString("wc_miniapp_link"));
            ioVar.d(jSONObject.optString("adv_id"));
            ioVar.ox(jSONObject.optString("site_id"));
            ioVar.ox(jSONObject.optInt("wc_open_method"));
            ioVar.p(jSONObject.optString("wc_miniapp_sdk"));
            ioVar.s(jSONObject.optString("wc_appid"));
            return ioVar;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.dq("parse WechatData failed:" + th.getMessage());
            return ioVar;
        }
    }

    public int d() {
        return this.f3452d;
    }

    public void d(int i) {
        this.s = i;
    }

    public void d(String str) {
        this.ox = str;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.f3452d = i;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public String ia() {
        return this.ia;
    }

    public int iw() {
        return this.iw;
    }

    public JSONObject kk() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("wc_skip_type", d());
            jSONObject.put("wc_miniapp_link", dq());
            jSONObject.put("adv_id", ox());
            jSONObject.put("site_id", p());
            jSONObject.put("wc_open_method", iw());
            jSONObject.put("wc_miniapp_sdk", mn());
            jSONObject.put("wc_appid", ia());
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.dq("toString failed:" + th.getMessage());
            return jSONObject;
        }
    }

    public String mn() {
        return this.mn;
    }

    public String ox() {
        return this.ox;
    }

    public void ox(int i) {
        this.iw = i;
    }

    public void ox(String str) {
        this.p = str;
    }

    public String p() {
        return this.p;
    }

    public void p(String str) {
        this.mn = str;
    }

    public int s() {
        return this.s;
    }

    public void s(String str) {
        this.ia = str;
    }

    public String toString() {
        return kk().toString();
    }
}
