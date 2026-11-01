package com.ss.android.socialbase.appdownloader;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    public int f9272d = -1;
    public String dq;
    public String ox;
    public String p;
    public String s;

    public static dq dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        dq dqVar = new dq();
        try {
            JSONObject jSONObject = new JSONObject(str);
            dqVar.s = jSONObject.optString("device_plans", null);
            dqVar.p = jSONObject.optString("real_device_plan", null);
            dqVar.ox = jSONObject.optString("error_msg", null);
            dqVar.dq = jSONObject.optString("ah_plan_type", null);
            String optString = jSONObject.optString("error_code");
            if (TextUtils.isEmpty(optString)) {
                dqVar.f9272d = -1;
                return dqVar;
            }
            dqVar.f9272d = Integer.parseInt(optString);
            return dqVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return dqVar;
        }
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        dq(jSONObject);
        return jSONObject;
    }

    public String dq() {
        return d().toString();
    }

    public void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("ah_plan_type", this.dq);
            jSONObject.put("error_code", String.valueOf(this.f9272d));
            jSONObject.put("error_msg", this.ox);
            jSONObject.put("real_device_plan", this.p);
            jSONObject.put("device_plans", this.s);
        } catch (Throwable unused) {
        }
    }
}
