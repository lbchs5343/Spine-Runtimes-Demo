package com.bytedance.sdk.gromore.dq.dq.dq;

import com.bytedance.msdk.core.admanager.kk;
import com.bytedance.sdk.gromore.dq.dq.p.gh;
import com.bytedance.sdk.gromore.dq.dq.p.r;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements gh {
    private kk dq;

    public d(kk kkVar) {
        this.dq = kkVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ia;
        ArrayList arrayList = new ArrayList();
        kk kkVar = this.dq;
        if (kkVar != null && (ia = kkVar.ia()) != null) {
            for (com.bytedance.msdk.api.d dVar : ia) {
                if (dVar != null) {
                    arrayList.add(new com.bytedance.sdk.gromore.dq.dq.p.dq(dVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void dq(r rVar) {
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void dq(boolean z) {
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public boolean dq() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            return kkVar.p();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean ia() {
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        kk kkVar = this.dq;
        return kkVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(kkVar.ig()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void kk() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.dq();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean mn() {
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void o() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.d();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> kk;
        ArrayList arrayList = new ArrayList();
        kk kkVar = this.dq;
        if (kkVar != null && (kk = kkVar.kk()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : kk) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d p() {
        kk kkVar = this.dq;
        return kkVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(kkVar.o()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> no;
        ArrayList arrayList = new ArrayList();
        kk kkVar = this.dq;
        if (kkVar != null && (no = kkVar.no()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : no) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
