package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn implements p {

    /* renamed from: d, reason: collision with root package name */
    private long f3783d;
    private long dq;
    private int ox = 0;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.dq);
            jSONObject.put("buffers_time", this.f3783d);
            jSONObject.put("video_backup", this.ox);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(long j) {
        this.f3783d = j;
    }

    public void dq(int i) {
        this.ox = i;
    }

    public void dq(long j) {
        this.dq = j;
    }
}
