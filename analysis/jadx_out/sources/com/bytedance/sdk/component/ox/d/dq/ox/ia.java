package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.sdk.component.ox.d.i;
import com.bytedance.sdk.component.ox.d.n;

/* loaded from: classes.dex */
public final class ia extends n {

    /* renamed from: d, reason: collision with root package name */
    private final long f2075d;
    private final String dq;
    private final com.bytedance.sdk.component.ox.dq.s ox;

    public ia(String str, long j, com.bytedance.sdk.component.ox.dq.s sVar) {
        this.dq = str;
        this.f2075d = j;
        this.ox = sVar;
    }

    @Override // com.bytedance.sdk.component.ox.d.n
    public long d() {
        return this.f2075d;
    }

    @Override // com.bytedance.sdk.component.ox.d.n
    public i dq() {
        String str = this.dq;
        if (str != null) {
            return i.dq(str);
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ox.d.n
    public com.bytedance.sdk.component.ox.dq.s ox() {
        return this.ox;
    }
}
