package com.bytedance.sdk.gromore.dq.dq.d;

import com.bytedance.sdk.gromore.dq.dq.p.gh;
import com.bytedance.sdk.gromore.dq.dq.p.r;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class p implements gh {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.core.admanager.s f2305d;
    private com.bytedance.msdk.api.p.dq.ox.dq dq;

    public p(com.bytedance.msdk.core.admanager.s sVar, com.bytedance.msdk.api.p.dq.ox.dq dqVar) {
        this.dq = dqVar;
        this.f2305d = sVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ds;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.s sVar = this.f2305d;
        if (sVar != null && (ds = sVar.ds()) != null) {
            for (com.bytedance.msdk.api.d dVar : ds) {
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
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(z);
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public boolean dq() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.ox();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean ia() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.u();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.gh()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void kk() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.er();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public boolean mn() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.c();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p.gh
    public void o() {
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.ce();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> nh;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.s sVar = this.f2305d;
        if (sVar != null && (nh = sVar.nh()) != null) {
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
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        return dqVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(dqVar.e()) : new com.bytedance.sdk.gromore.dq.dq.p.s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> ob;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.core.admanager.s sVar = this.f2305d;
        if (sVar != null && (ob = sVar.ob()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : ob) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
