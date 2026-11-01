package com.bytedance.sdk.gromore.dq.dq.iw;

import com.bytedance.msdk.core.admanager.no;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ox implements com.bytedance.sdk.gromore.dq.dq.s.iw {
    private no dq;

    public ox(no noVar) {
        this.dq = noVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ds;
        ArrayList arrayList = new ArrayList();
        no noVar = this.dq;
        if (noVar != null && (ds = noVar.ds()) != null) {
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
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.jy();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        no noVar = this.dq;
        return noVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(noVar.o()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.d();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> nh;
        ArrayList arrayList = new ArrayList();
        no noVar = this.dq;
        if (noVar != null && (nh = noVar.nh()) != null) {
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
        no noVar = this.dq;
        return noVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(noVar.vf()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> ob;
        ArrayList arrayList = new ArrayList();
        no noVar = this.dq;
        if (noVar != null && (ob = noVar.ob()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : ob) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
