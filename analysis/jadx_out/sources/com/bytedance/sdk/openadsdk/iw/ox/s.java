package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s implements p {

    /* renamed from: d, reason: collision with root package name */
    public long f3789d;
    public long dq;
    public int ox;
    public int p = 0;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.dq);
            jSONObject.put("buffers_time", this.f3789d);
            jSONObject.put("break_reason", this.ox);
            jSONObject.put("video_backup", this.p);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(int i) {
        this.p = i;
    }

    public void d(long j) {
        this.f3789d = j;
    }

    public void dq(int i) {
        this.ox = i;
    }

    public void dq(long j) {
        this.dq = j;
    }
}
