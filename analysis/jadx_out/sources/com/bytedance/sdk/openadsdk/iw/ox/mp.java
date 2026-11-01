package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp extends dq {

    /* renamed from: d, reason: collision with root package name */
    private long f3784d;
    private String dq;
    private long ox;
    private long p;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.dq);
            jSONObject.put("preload_size", this.f3784d);
            jSONObject.put("load_time", this.ox);
            jSONObject.put("local_cache", this.p);
            dq(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(long j) {
        this.ox = j;
    }

    public void dq(long j) {
        this.f3784d = j;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void ox(long j) {
        this.p = j;
    }
}
