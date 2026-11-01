package com.bytedance.sdk.gromore.dq.dq.mn.dq;

import com.bytedance.msdk.ox.p.no;
import com.bytedance.sdk.gromore.dq.dq.p;
import com.bytedance.sdk.gromore.dq.dq.p.gh;
import com.bytedance.sdk.gromore.dq.dq.p.iw;
import com.bytedance.sdk.gromore.dq.dq.p.r;
import com.bytedance.sdk.gromore.dq.dq.p.s;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements gh {
    private no dq;

    public d(no noVar) {
        this.dq = noVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<p> d() {
        List<com.bytedance.msdk.api.d> ia;
        ArrayList arrayList = new ArrayList();
        no noVar = this.dq;
        if (noVar != null && (ia = noVar.ia()) != null) {
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
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.p();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean ia() {
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        no noVar = this.dq;
        return noVar != null ? new iw(noVar.ig()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void kk() {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.dq();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean mn() {
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void o() {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.d();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> kk;
        ArrayList arrayList = new ArrayList();
        no noVar = this.dq;
        if (noVar != null && (kk = noVar.kk()) != null) {
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
        no noVar = this.dq;
        return noVar != null ? new iw(noVar.o()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> no;
        ArrayList arrayList = new ArrayList();
        no noVar = this.dq;
        if (noVar != null && (no = noVar.no()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : no) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
