package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o extends dq {

    /* renamed from: d, reason: collision with root package name */
    private long f3786d;
    private String dq;

    public o(String str, long j) {
        this.dq = str;
        this.f3786d = j;
    }

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.dq);
            jSONObject.put("preload_size", this.f3786d);
            dq(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
