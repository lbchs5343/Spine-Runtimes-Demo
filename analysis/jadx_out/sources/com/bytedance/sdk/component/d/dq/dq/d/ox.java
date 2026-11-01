package com.bytedance.sdk.component.d.dq.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.q;

/* loaded from: classes.dex */
public class ox extends ig {
    public p mp;

    public ox(ig.dq dqVar) {
        super(dqVar);
        this.mp = new p();
    }

    @Override // com.bytedance.sdk.component.d.dq.ig
    public com.bytedance.sdk.component.d.dq.d dq(q qVar) {
        qVar.dq(this);
        if (qVar.d() == null || qVar.d().dq() == null || TextUtils.isEmpty(qVar.d().dq().toString())) {
            return null;
        }
        return new dq(qVar, this.mp);
    }

    @Override // com.bytedance.sdk.component.d.dq.ig
    public com.bytedance.sdk.component.d.dq.p dq() {
        return this.mp;
    }
}
