package com.bytedance.sdk.gromore.dq.dq.mn.ox;

import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class iw implements com.bytedance.sdk.gromore.dq.dq.s.iw {
    private com.bytedance.msdk.ox.p.dq dq;

    public iw(com.bytedance.msdk.ox.p.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ig;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null && (ig = dqVar.ig()) != null) {
            for (com.bytedance.msdk.api.d dVar : ig) {
                if (dVar != null) {
                    arrayList.add(new com.bytedance.sdk.gromore.dq.dq.p.dq(dVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public boolean dq() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.kx();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.fw()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> mp;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null && (mp = dqVar.mp()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : mp) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d p() {
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.cd()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> q;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.p.dq dqVar = this.dq;
        if (dqVar != null && (q = dqVar.q()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : q) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
