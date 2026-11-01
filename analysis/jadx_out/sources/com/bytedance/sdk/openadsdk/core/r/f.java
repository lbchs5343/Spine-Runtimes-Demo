package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class f {

    /* renamed from: d, reason: collision with root package name */
    public double f3439d;
    public double dq;
    public double ox;
    public double p;

    public f(double d2, double d3, double d4, double d5) {
        this.dq = d2;
        this.f3439d = d3;
        this.ox = d4;
        this.p = d5;
    }

    public static f d(f fVar, f fVar2) {
        if (fVar == null) {
            return fVar2;
        }
        if (fVar2 == null) {
            return null;
        }
        double d2 = fVar.dq;
        double d3 = fVar.f3439d;
        double d4 = fVar.ox + d2;
        double d5 = fVar.p + d3;
        double d6 = fVar2.dq;
        double d7 = fVar2.f3439d;
        double d8 = fVar2.ox + d6;
        double d9 = fVar2.p + d7;
        double min = Math.min(d2, d6);
        double min2 = Math.min(d3, d7);
        return new f(min, min2, Math.abs(Math.max(d4, d8) - min), Math.abs(Math.max(d5, d9) - min2));
    }

    public static double dq(f fVar, f fVar2) {
        if (fVar == null || fVar2 == null) {
            return 0.0d;
        }
        double d2 = fVar.dq;
        double d3 = fVar.f3439d;
        double d4 = fVar.ox + d2;
        double d5 = fVar.p + d3;
        double d6 = fVar2.dq;
        double d7 = fVar2.f3439d;
        double d8 = fVar2.ox + d6;
        double d9 = fVar2.p + d7;
        double max = Math.max(d2, d6);
        double max2 = Math.max(d3, d7);
        double min = Math.min(d4, d8);
        double min2 = (Math.min(d5, d9) - max2) * (min - max);
        if (d3 >= d9 || d4 <= d6 || d5 <= d7 || d2 >= d8) {
            return 0.0d;
        }
        return min2;
    }

    public static f dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("point");
        JSONArray optJSONArray2 = jSONObject.optJSONArray("size");
        if (optJSONArray == null || optJSONArray.length() != 2 || optJSONArray2 == null || optJSONArray2.length() != 2) {
            return null;
        }
        return new f(optJSONArray.optDouble(0), optJSONArray.optDouble(1), optJSONArray2.optInt(0), optJSONArray2.optInt(1));
    }

    public static JSONObject dq(f fVar) {
        if (fVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(0, fVar.dq);
            jSONArray.put(1, fVar.f3439d);
            jSONObject.put("point", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, fVar.ox);
            jSONArray2.put(1, fVar.p);
            jSONObject.put("size", jSONArray2);
            return jSONObject;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.dq("xeasy", "json:" + e2.getMessage());
            return null;
        }
    }

    public boolean dq(double d2, double d3) {
        double d4 = this.ox;
        if (d4 <= 0.0d) {
            return false;
        }
        double d5 = this.p;
        if (d5 <= 0.0d) {
            return false;
        }
        double d6 = this.dq;
        if (d2 <= d6 || d2 >= d6 + d4) {
            return false;
        }
        double d7 = this.f3439d;
        return d3 > d7 && d3 < d7 + d5;
    }
}
