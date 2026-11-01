package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ij {

    /* renamed from: d, reason: collision with root package name */
    private String f3451d;
    private String dq;
    private String iw;
    private String ox;
    private String p;
    private String s;

    public ij(String str, String str2, String str3, String str4) {
        this.dq = str3;
        this.f3451d = str2;
        this.p = str;
        this.ox = str4;
    }

    public String d() {
        return this.dq;
    }

    public void d(String str) {
        this.iw = str;
    }

    public String dq() {
        return this.f3451d;
    }

    public void dq(String str) {
        this.s = str;
    }

    public void dq(String str, String str2, String str3, String str4) {
        this.dq = str3;
        this.f3451d = str2;
        this.p = str;
        this.ox = str4;
    }

    public JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tk", this.dq).put("vd", this.p).put("cr", this.ox).put("err", this.f3451d);
            if (!TextUtils.isEmpty(this.ox) && this.ox.equals("2")) {
                if (!TextUtils.isEmpty(this.s)) {
                    jSONObject.put("i6", this.s);
                }
                if (!TextUtils.isEmpty(this.iw)) {
                    jSONObject.put("prov", this.iw);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        JSONObject ox = ox();
        return ox.length() > 0 ? ox.toString() : "";
    }
}
