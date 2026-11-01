package com.bytedance.sdk.openadsdk.mp.dq;

import com.bytedance.sdk.component.iw.mn;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.openadsdk.core.le.dq.dq;
import com.bytedance.sdk.openadsdk.core.r.jw;

/* loaded from: classes3.dex */
public class dq extends com.bytedance.sdk.openadsdk.core.le.dq.dq {
    private jw dq;

    private void dq(long j, long j2) {
        this.dq.q(j2);
        jw jwVar = this.dq;
        jwVar.kk(j2 - jwVar.i());
        this.dq.gh(j2 - j);
    }

    private void dq(no noVar) {
        mn o = noVar.o();
        if (o == null || !p()) {
            return;
        }
        dq(o.dq(), o.d());
    }

    private boolean p() {
        jw jwVar = this.dq;
        return jwVar != null && jwVar.le();
    }

    private void s() {
        if (p()) {
            long currentTimeMillis = System.currentTimeMillis();
            jw jwVar = this.dq;
            jwVar.ia(currentTimeMillis - jwVar.gh());
            this.dq.mp(currentTimeMillis);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq
    public void dq() {
        s();
    }

    @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq
    public void dq(no noVar, dq.d dVar) {
        dq(noVar);
        super.dq(noVar, dVar);
    }

    public void dq(jw jwVar) {
        this.dq = jwVar;
    }

    public jw ox() {
        return this.dq;
    }
}
