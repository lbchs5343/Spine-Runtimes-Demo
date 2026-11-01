package com.bytedance.sdk.component.ox.d.dq.d;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.ji;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.r;
import java.io.IOException;

/* loaded from: classes.dex */
public final class dq implements r {
    public final k dq;

    public dq(k kVar) {
        this.dq = kVar;
    }

    @Override // com.bytedance.sdk.component.ox.d.r
    public bl dq(r.dq dqVar) throws IOException {
        ji jiVar;
        com.bytedance.sdk.component.ox.d.dq.ox.mn mnVar = (com.bytedance.sdk.component.ox.d.dq.ox.mn) dqVar;
        kx dq = mnVar.dq();
        if (dq != null && (jiVar = dq.iw) != null) {
            jiVar.d();
        }
        mn iw = mnVar.iw();
        com.bytedance.sdk.component.ox.d.dq.ox.ox dq2 = iw.dq(this.dq, dqVar, !dq.d().equals("GET"));
        ox d2 = iw.d();
        ji jiVar2 = dq.iw;
        if (jiVar2 != null) {
            jiVar2.ox();
        }
        return mnVar.dq(dq, iw, dq2, d2);
    }
}
