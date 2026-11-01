package com.bytedance.sdk.component.d.dq.dq.dq;

import com.bytedance.sdk.component.ox.d.k;

/* loaded from: classes.dex */
public class p extends com.bytedance.sdk.component.d.dq.p {
    k dq;

    public p(k kVar) {
        this.dq = kVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.p
    public void d(int i) {
        if (i < 5) {
            this.dq.gh().d(5);
        } else {
            this.dq.gh().d(i);
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.p
    public void dq(int i) {
        this.dq.gh().dq(i);
    }
}
