package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class xi {

    /* renamed from: d, reason: collision with root package name */
    private int f3523d;
    private JSONObject dq;
    private String ox;
    private String p;
    private boolean s;

    public xi(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.dq = jSONObject;
            this.f3523d = jSONObject.optInt("dialog_type");
            this.ox = jSONObject.optString("template_url");
            this.p = jSONObject.optString("template_md5");
        }
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.mn.dq();
        dqVar.d(s());
        dqVar.ox(p());
    }

    public JSONObject d() {
        return this.dq;
    }

    public JSONObject dq() {
        return this.dq;
    }

    public void dq(boolean z) {
        this.s = z;
    }

    public boolean iw() {
        return this.s;
    }

    public int ox() {
        return this.f3523d;
    }

    public String p() {
        return this.ox;
    }

    public String s() {
        return this.p;
    }
}
