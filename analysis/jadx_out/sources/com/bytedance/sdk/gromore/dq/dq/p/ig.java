package com.bytedance.sdk.gromore.dq.dq.p;

import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ig implements gh {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.core.admanager.ia f2349d;
    private com.bytedance.msdk.api.p.dq.mn.dq dq;

    public ig(com.bytedance.msdk.core.admanager.ia iaVar, com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        this.dq = dqVar;
        this.f2349d = iaVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ds;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.ia iaVar = this.f2349d;
        if (iaVar != null && (ds = iaVar.ds()) != null) {
            for (com.bytedance.msdk.api.d dVar : ds) {
                if (dVar != null) {
                    arrayList.add(new dq(dVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void dq(final r rVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.p() { // from class: com.bytedance.sdk.gromore.dq.dq.p.ig.1
                @Override // com.bytedance.msdk.api.p.dq.p
                public void dq() {
                    r rVar2 = rVar;
                    if (rVar2 != null) {
                        rVar2.dq();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void dq(boolean z) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(z);
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public boolean dq() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.d();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean ia() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.ir();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        return dqVar != null ? new iw(dqVar.cd()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void kk() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.nh();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean mn() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.u();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void o() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.j();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> nh;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.ia iaVar = this.f2349d;
        if (iaVar != null && (nh = iaVar.nh()) != null) {
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
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        return dqVar != null ? new iw(dqVar.gh()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> ob;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.ia iaVar = this.f2349d;
        if (iaVar != null && (ob = iaVar.ob()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : ob) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
