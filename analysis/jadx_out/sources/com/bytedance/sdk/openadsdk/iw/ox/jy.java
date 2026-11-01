package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class jy implements p {

    /* renamed from: d, reason: collision with root package name */
    private long f3781d;
    private long dq;
    private int ox;
    private int p;
    private String s;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.dq);
            jSONObject.put("total_duration", this.f3781d);
            jSONObject.put("error_code", this.ox);
            jSONObject.put("extra_error_code", this.p);
            jSONObject.put("error_message", this.s);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(int i) {
        this.p = i;
    }

    public void d(long j) {
        this.f3781d = j;
    }

    public void dq(int i) {
        this.ox = i;
    }

    public void dq(long j) {
        this.dq = j;
    }

    public void dq(String str) {
        this.s = str;
    }
}
