package com.bytedance.sdk.component.iw.d;

import com.bytedance.sdk.component.iw.mn;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;

/* loaded from: classes.dex */
public class s implements mn {

    /* renamed from: d, reason: collision with root package name */
    private long f1946d;
    private long dq;
    private long ox;

    @Override // com.bytedance.sdk.component.iw.mn
    @ATSMethod(2)
    public long d() {
        return this.f1946d;
    }

    public void d(long j) {
        this.f1946d = j;
    }

    @Override // com.bytedance.sdk.component.iw.mn
    @ATSMethod(1)
    public long dq() {
        return this.dq;
    }

    public void dq(long j) {
        this.dq = j;
    }

    @Override // com.bytedance.sdk.component.iw.mn
    @ATSMethod(3)
    public long ox() {
        return this.ox;
    }

    public void ox(long j) {
        this.ox = j;
    }
}
