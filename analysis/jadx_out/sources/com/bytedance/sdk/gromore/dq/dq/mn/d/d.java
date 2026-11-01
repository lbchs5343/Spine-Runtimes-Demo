package com.bytedance.sdk.gromore.dq.dq.mn.d;

import com.bytedance.msdk.ox.p.mn;
import com.bytedance.sdk.gromore.dq.dq.p.gh;
import com.bytedance.sdk.gromore.dq.dq.p.iw;
import com.bytedance.sdk.gromore.dq.dq.p.r;
import com.bytedance.sdk.gromore.dq.dq.p.s;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements gh {

    /* renamed from: d, reason: collision with root package name */
    private mn f2315d;
    private com.bytedance.msdk.api.p.dq.ox.dq dq;

    public d(mn mnVar, com.bytedance.msdk.api.p.dq.ox.dq dqVar) {
        this.dq = dqVar;
        this.f2315d = mnVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.p> d() {
        List<com.bytedance.msdk.api.d> ig;
        ArrayList arrayList = new ArrayList();
        mn mnVar = this.f2315d;
        if (mnVar != null && (ig = mnVar.ig()) != null) {
            for (com.bytedance.msdk.api.d dVar : ig) {
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
        return dqVar != null ? new iw(dqVar.gh()) : new s();
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
        List<com.bytedance.msdk.api.ox> mp;
        ArrayList arrayList = new ArrayList();
        mn mnVar = this.f2315d;
        if (mnVar != null && (mp = mnVar.mp()) != null) {
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
        com.bytedance.msdk.api.p.dq.ox.dq dqVar = this.dq;
        return dqVar != null ? new iw(dqVar.e()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> q;
        ArrayList arrayList = new ArrayList();
        mn mnVar = this.f2315d;
        if (mnVar != null && (q = mnVar.q()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : q) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
