package com.bytedance.msdk.core.s.d;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private int f1014d;
    private int dq;
    private int iw;
    private int mn;
    private String ox;
    private String p;
    private int s;

    public void d(int i) {
        this.dq = i;
    }

    public void d(String str) {
        this.p = str;
    }

    public String dq() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.KEY_REASON, this.dq);
            jSONObject.put("fill_error_code", this.f1014d);
            jSONObject.put("fill_error_msg", this.ox);
            jSONObject.put("mediation_rit", this.p);
            jSONObject.put("load_sort", this.s);
            jSONObject.put("show_sort", this.iw);
            jSONObject.put("has_shown", this.mn);
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "{\"name\": \"json err\"}";
        }
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(String str) {
        this.ox = str;
    }

    public void ox(int i) {
        this.f1014d = i;
    }

    public void p(int i) {
        this.s = i;
    }

    public void s(int i) {
        this.iw = i;
    }
}
