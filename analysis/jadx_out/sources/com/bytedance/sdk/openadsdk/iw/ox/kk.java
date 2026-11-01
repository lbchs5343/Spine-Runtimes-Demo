package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk implements p {

    /* renamed from: d, reason: collision with root package name */
    private long f3782d;
    private long dq;
    private int ox;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_start_duration", this.dq);
            jSONObject.put("video_cache_size", this.f3782d);
            jSONObject.put("is_auto_play", this.ox);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(long j) {
        this.f3782d = j;
    }

    public void dq(int i) {
        this.ox = i;
    }

    public void dq(long j) {
        this.dq = j;
    }
}
