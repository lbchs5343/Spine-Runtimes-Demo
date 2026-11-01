package com.bytedance.sdk.openadsdk.core.k;

import com.bytedance.sdk.openadsdk.core.no;

/* loaded from: classes3.dex */
public class dq {
    Boolean dq = null;

    /* renamed from: d, reason: collision with root package name */
    Boolean f3128d = null;
    Boolean ox = null;

    public boolean d() {
        if (this.f3128d == null) {
            com.bytedance.sdk.openadsdk.f.d.ox.p kk = no.ia().kk();
            this.f3128d = Boolean.valueOf(kk == null || kk.p());
        }
        return this.f3128d.booleanValue();
    }

    public boolean dq() {
        if (this.dq == null) {
            com.bytedance.sdk.openadsdk.f.d.ox.p kk = no.ia().kk();
            this.dq = Boolean.valueOf(kk == null || kk.ox());
        }
        return this.dq.booleanValue();
    }

    public boolean ox() {
        if (this.ox == null) {
            com.bytedance.sdk.openadsdk.f.d.ox.p kk = no.ia().kk();
            this.ox = Boolean.valueOf(kk == null || kk.dq());
        }
        return this.ox.booleanValue();
    }
}
