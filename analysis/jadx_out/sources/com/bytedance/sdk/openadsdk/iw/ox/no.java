package com.bytedance.sdk.openadsdk.iw.ox;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class no extends dq {

    /* renamed from: d, reason: collision with root package name */
    private long f3785d;
    private String dq;
    private String iw;
    private long ox;
    private int p;
    private String s;

    @Override // com.bytedance.sdk.openadsdk.iw.ox.p
    public void a_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.dq);
            jSONObject.put("preload_size", this.f3785d);
            jSONObject.put("load_time", this.ox);
            jSONObject.put("error_code", this.p);
            jSONObject.put("error_message", this.s);
            jSONObject.put("error_message_server", this.iw);
            dq(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(long j) {
        this.ox = j;
    }

    public void d(String str) {
        this.s = str;
    }

    public void dq(int i) {
        this.p = i;
    }

    public void dq(long j) {
        this.f3785d = j;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void ox(String str) {
        this.iw = str;
    }
}
