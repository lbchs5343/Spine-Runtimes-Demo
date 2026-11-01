package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class q implements p {

    /* renamed from: d, reason: collision with root package name */
    public int f3788d;
    public long dq;
    public long ox;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.dq);
            jSONObject.put("buffers_count", this.f3788d);
            jSONObject.put("total_duration", this.ox);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(long j) {
        this.ox = j;
    }

    public void dq(int i) {
        this.f3788d = i;
    }

    public void dq(long j) {
        this.dq = j;
    }
}
