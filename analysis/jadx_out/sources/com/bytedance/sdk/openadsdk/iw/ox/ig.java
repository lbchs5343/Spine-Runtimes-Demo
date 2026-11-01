package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ig extends dq {

    /* renamed from: d, reason: collision with root package name */
    private long f3779d;
    private String dq;

    public ig(String str, long j) {
        this.dq = str;
        this.f3779d = j;
    }

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.dq);
            jSONObject.put("preload_size", this.f3779d);
            com.bykv.vk.openvk.component.video.api.ox.p dq = dq();
            if (dq != null) {
                jSONObject.put("run_task_mills", dq.dq().optLong("run_task_mills"));
            }
            dq(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
