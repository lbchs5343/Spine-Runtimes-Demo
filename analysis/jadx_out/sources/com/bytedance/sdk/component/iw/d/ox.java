package com.bytedance.sdk.component.iw.d;

import com.bytedance.sdk.component.iw.q;

/* loaded from: classes.dex */
public class ox implements com.bytedance.sdk.component.iw.s {

    /* renamed from: d, reason: collision with root package name */
    private boolean f1944d;
    private String dq;
    private boolean ox;
    private q p;

    public ox(String str, boolean z, boolean z2, q qVar) {
        this.dq = str;
        this.f1944d = z;
        this.ox = z2;
        this.p = qVar;
    }

    @Override // com.bytedance.sdk.component.iw.s
    public boolean d() {
        return this.f1944d;
    }

    @Override // com.bytedance.sdk.component.iw.s
    public String dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.iw.s
    public boolean ox() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.iw.s
    public q p() {
        return this.p;
    }
}
