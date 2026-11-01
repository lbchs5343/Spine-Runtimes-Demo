package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class i {
    int dq = 1;

    /* renamed from: d, reason: collision with root package name */
    int f3448d = 1;

    public void d(int i) {
        this.f3448d = i;
    }

    public boolean d() {
        return this.f3448d == 1;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public boolean dq() {
        return this.dq == 1;
    }

    public JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ah", this.dq);
            jSONObject.put("am", this.f3448d);
            return jSONObject;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d(e2.toString());
            return jSONObject;
        }
    }
}
