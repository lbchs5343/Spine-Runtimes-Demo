package com.bytedance.sdk.gromore.dq.dq.mn.iw;

import com.bytedance.msdk.ox.p.mp;
import com.bytedance.sdk.gromore.dq.dq.p;
import com.bytedance.sdk.gromore.dq.dq.p.s;
import com.bytedance.sdk.gromore.dq.dq.s.iw;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements iw {
    private mp dq;

    public d(mp mpVar) {
        this.dq = mpVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<p> d() {
        List<com.bytedance.msdk.api.d> ig;
        ArrayList arrayList = new ArrayList();
        mp mpVar = this.dq;
        if (mpVar != null && (ig = mpVar.ig()) != null) {
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
        mp mpVar = this.dq;
        if (mpVar != null) {
            return mpVar.e();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        mp mpVar = this.dq;
        return mpVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(mpVar.fw()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            mpVar.dq();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> mp;
        ArrayList arrayList = new ArrayList();
        mp mpVar = this.dq;
        if (mpVar != null && (mp = mpVar.mp()) != null) {
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
        mp mpVar = this.dq;
        return mpVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(mpVar.cd()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> q;
        ArrayList arrayList = new ArrayList();
        mp mpVar = this.dq;
        if (mpVar != null && (q = mpVar.q()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : q) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
