package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class f implements p {
    private long dq;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_cache_size", this.dq);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(long j) {
        this.dq = j;
    }
}
