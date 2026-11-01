package com.bytedance.sdk.component.d.dq.dq.dq;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.ox.d.r;
import java.io.IOException;

/* loaded from: classes.dex */
public class d implements kk.dq {
    r.dq dq;

    public d(r.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.kk.dq
    public f dq(q qVar) throws IOException {
        return new iw(this.dq.dq(this.dq.dq().iw().dq(qVar.d().dq()).dq()));
    }

    @Override // com.bytedance.sdk.component.d.dq.kk.dq
    public q dq() {
        return new s(this.dq.dq());
    }
}
