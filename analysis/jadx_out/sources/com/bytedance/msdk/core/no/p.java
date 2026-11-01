package com.bytedance.msdk.core.no;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private String f998d;
    private String dq;
    private double iw;
    private double mn;
    private String ox;
    private int p;
    private String s;

    public p(String str, String str2, String str3, int i, String str4, double d2, double d3) {
        this.dq = str;
        this.f998d = str2;
        this.ox = str3;
        this.p = i;
        this.s = str4;
        this.iw = d2;
        this.mn = d3;
    }

    public static p dq(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return null;
        }
        return new p(str, jSONObject.optString("label_name"), jSONObject.optString("timestamp"), jSONObject.optInt("label_id"), jSONObject.optString("label_version"), jSONObject.optDouble("upper_bound"), jSONObject.optDouble("lower_bound"));
    }

    public String d() {
        return this.ox;
    }

    public String dq() {
        return this.f998d;
    }

    public double iw() {
        return this.mn;
    }

    public int ox() {
        return this.p;
    }

    public String p() {
        return this.s;
    }

    public double s() {
        return this.iw;
    }
}
