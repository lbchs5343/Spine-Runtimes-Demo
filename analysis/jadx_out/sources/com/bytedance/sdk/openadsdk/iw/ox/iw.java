package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw implements p {

    /* renamed from: d, reason: collision with root package name */
    private long f3780d;
    private long dq;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.dq);
            jSONObject.put("total_duration", this.f3780d);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(long j) {
        this.f3780d = j;
    }

    public void dq(long j) {
        this.dq = j;
    }
}
