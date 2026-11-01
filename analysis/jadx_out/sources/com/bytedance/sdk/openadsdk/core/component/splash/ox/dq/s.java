package com.bytedance.sdk.openadsdk.core.component.splash.ox.dq;

import com.bytedance.sdk.openadsdk.core.r.nh;

/* loaded from: classes3.dex */
public class s extends dq {
    public static int p = 1;
    public static int s = 2;
    private String ia;
    private com.bytedance.sdk.openadsdk.f.d.ox.d iw;
    private nh mn;

    public s(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
        this.iw = dVar;
        this.mn = nhVar;
        if (dVar != null) {
            this.ia = dVar.mn();
        }
    }

    public String iw() {
        return this.ia;
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.d p() {
        return this.iw;
    }

    public nh s() {
        return this.mn;
    }
}
