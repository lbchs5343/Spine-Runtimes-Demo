package com.bytedance.sdk.gromore.dq.dq.mn.s;

import com.bytedance.msdk.ox.p.ig;
import com.bytedance.sdk.gromore.dq.dq.p;
import com.bytedance.sdk.gromore.dq.dq.p.s;
import com.bytedance.sdk.gromore.dq.dq.s.iw;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements iw {
    private ig dq;

    public d(ig igVar) {
        this.dq = igVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<p> d() {
        List<com.bytedance.msdk.api.d> ig;
        ArrayList arrayList = new ArrayList();
        ig igVar = this.dq;
        if (igVar != null && (ig = igVar.ig()) != null) {
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
        ig igVar = this.dq;
        if (igVar != null) {
            return igVar.kx();
        }
        return false;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public com.bytedance.sdk.gromore.dq.dq.d iw() {
        ig igVar = this.dq;
        return igVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(igVar.fw()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.s.iw
    public void mn() {
        ig igVar = this.dq;
        if (igVar != null) {
            igVar.dq();
        }
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> ox() {
        List<com.bytedance.msdk.api.ox> mp;
        ArrayList arrayList = new ArrayList();
        ig igVar = this.dq;
        if (igVar != null && (mp = igVar.mp()) != null) {
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
        ig igVar = this.dq;
        return igVar != null ? new com.bytedance.sdk.gromore.dq.dq.p.iw(igVar.cd()) : new s();
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.ox
    public List<com.bytedance.sdk.gromore.dq.dq.d> s() {
        List<com.bytedance.msdk.api.ox> q;
        ArrayList arrayList = new ArrayList();
        ig igVar = this.dq;
        if (igVar != null && (q = igVar.q()) != null) {
            for (com.bytedance.msdk.api.ox oxVar : q) {
                if (oxVar != null) {
                    dub.o(oxVar, arrayList);
                }
            }
        }
        return arrayList;
    }
}
