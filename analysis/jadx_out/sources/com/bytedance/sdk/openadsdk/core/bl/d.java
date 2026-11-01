package com.bytedance.sdk.openadsdk.core.bl;

import com.bytedance.sdk.component.utils.ig;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    private String f2476d;
    private boolean dq;

    public static d dq(JSONObject jSONObject) {
        d dVar = new d();
        if (jSONObject != null) {
            dVar.dq(jSONObject.optBoolean("sub_process", false));
            dVar.dq(jSONObject.optString("ec_mall_back_url"));
        }
        return dVar;
    }

    public String d() {
        return this.f2476d;
    }

    public void dq(String str) {
        this.f2476d = str;
    }

    public void dq(boolean z) {
        this.dq = z;
    }

    public boolean dq() {
        return this.dq;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sub_process", dq());
            jSONObject.put("ec_mall_back_url", this.f2476d);
        } catch (Exception e2) {
            ig.d("AppLiveConfig", e2);
        }
        return jSONObject.toString();
    }
}
