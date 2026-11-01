package com.bytedance.sdk.gromore.dq.dq.mn.p;

import com.bytedance.msdk.ox.p.kk;
import com.bytedance.sdk.gromore.dq.dq.p.gh;
import com.bytedance.sdk.gromore.dq.dq.p.r;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ox implements gh {

    /* renamed from: d, reason: collision with root package name */
    private kk f2334d;
    private com.bytedance.msdk.api.p.dq.mn.dq dq;

    public ox(kk kkVar, com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        this.dq = dqVar;
        this.f2334d = kkVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ig;
        ArrayList arrayList = new ArrayList();
        kk kkVar = this.f2334d;
        if (kkVar != null && (ig = kkVar.ig()) != null) {
            for (com.bytedance.msdk.api.d dVar : ig) {
                if (dVar != null) {
                    arrayList.add(new com.bytedance.sdk.gromore.dq.dq.p.dq(dVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void dq(final r rVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.p() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.p.ox.1
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
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.cd()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
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
        List<com.bytedance.msdk.api.ox> mp;
        ArrayList arrayList = new ArrayList();
        kk kkVar = this.f2334d;
        if (kkVar != null && (mp = kkVar.mp()) != null) {
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
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.gh()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> q;
        ArrayList arrayList = new ArrayList();
        kk kkVar = this.f2334d;
        if (kkVar != null && (q = kkVar.q()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : q) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
