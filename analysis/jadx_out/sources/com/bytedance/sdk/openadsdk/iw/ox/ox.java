package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements p {

    /* renamed from: d, reason: collision with root package name */
    private long f3787d;
    private long dq;
    private int ox;
    private int p;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.dq);
            jSONObject.put("total_duration", this.f3787d);
            jSONObject.put("vbtt_skip_type", this.ox);
            jSONObject.put("skip_reason", this.p);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(int i) {
        this.p = i;
    }

    public void d(long j) {
        this.f3787d = j;
    }

    public void dq(int i) {
        this.ox = i;
    }

    public void dq(long j) {
        this.dq = j;
    }
}
