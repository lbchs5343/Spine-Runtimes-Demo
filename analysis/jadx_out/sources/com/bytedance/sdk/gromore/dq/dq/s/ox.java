package com.bytedance.sdk.gromore.dq.dq.s;

import com.bytedance.msdk.core.admanager.o;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ox implements iw {
    private o dq;

    public ox(o oVar) {
        this.dq = oVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ds;
        ArrayList arrayList = new ArrayList();
        o oVar = this.dq;
        if (oVar != null && (ds = oVar.ds()) != null) {
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
        o oVar = this.dq;
        if (oVar != null) {
            return oVar.mp();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        o oVar = this.dq;
        return oVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(oVar.o()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        o oVar = this.dq;
        if (oVar != null) {
            oVar.d();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> nh;
        ArrayList arrayList = new ArrayList();
        o oVar = this.dq;
        if (oVar != null && (nh = oVar.nh()) != null) {
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
        o oVar = this.dq;
        return oVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(oVar.vf()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> ob;
        ArrayList arrayList = new ArrayList();
        o oVar = this.dq;
        if (oVar != null && (ob = oVar.ob()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : ob) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
