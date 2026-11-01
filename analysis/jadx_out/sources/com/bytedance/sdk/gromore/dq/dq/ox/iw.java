package com.bytedance.sdk.gromore.dq.dq.ox;

import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class iw implements com.bytedance.sdk.gromore.dq.dq.s.iw {
    private com.bytedance.msdk.core.admanager.dq dq;

    public iw(com.bytedance.msdk.core.admanager.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ds;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        if (dqVar != null && (ds = dqVar.ds()) != null) {
            for (com.bytedance.msdk.api.d dVar : ds) {
                if (dVar != null) {
                    arrayList.add(new com.bytedance.sdk.gromore.dq.dq.p.dq(dVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public boolean dq() {
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.mp();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.o()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> nh;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        if (dqVar != null && (nh = dqVar.nh()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : nh) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d p() {
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.vf()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> ob;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.dq dqVar = this.dq;
        if (dqVar != null && (ob = dqVar.ob()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : ob) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
