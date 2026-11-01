package com.bytedance.sdk.gromore.dq.dq.mn.ox;

import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements com.bytedance.sdk.gromore.dq.dq.s.iw {
    private com.bytedance.msdk.ox.p.ia dq;

    public d(com.bytedance.msdk.ox.p.ia iaVar) {
        this.dq = iaVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ig;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null && (ig = iaVar.ig()) != null) {
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
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            return iaVar.kx();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        return iaVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(iaVar.fw()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            iaVar.dq();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> mp;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null && (mp = iaVar.mp()) != null) {
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
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        return iaVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(iaVar.cd()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> q;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null && (q = iaVar.q()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : q) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
