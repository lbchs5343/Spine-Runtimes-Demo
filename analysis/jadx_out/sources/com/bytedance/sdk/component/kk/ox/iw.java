package com.bytedance.sdk.component.kk.ox;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;

/* loaded from: classes.dex */
public class iw implements kk {
    private int dq;

    @Override // com.bytedance.sdk.component.d.dq.kk
    public f dq(kk.dq dqVar) throws IOException {
        IOException iOException;
        q dq = dqVar.dq();
        if (mn.dq().dq(this.dq).d() != null) {
            mn.dq().dq(this.dq).d().s();
        }
        String mnVar = dq.d().toString();
        String dq2 = mn.dq().dq(this.dq).dq(mnVar);
        if (!mnVar.equals(dq2)) {
            dq = dq.mn().dq(dq2).d();
        }
        f fVar = null;
        try {
            iOException = null;
            fVar = dqVar.dq(dq);
        } catch (Exception e2) {
            iOException = new IOException(e2.getMessage());
            mn.dq().dq(this.dq).dq(dq, e2);
        }
        mn.dq().dq(this.dq).dq(dq, fVar);
        if (iOException == null) {
            return fVar == null ? dqVar.dq(dq) : fVar;
        }
        throw iOException;
    }

    public void dq(int i) {
        this.dq = i;
    }
}
