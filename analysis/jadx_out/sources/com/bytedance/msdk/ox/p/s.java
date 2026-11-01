package com.bytedance.msdk.ox.p;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.ia.ir;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class s extends d implements com.bytedance.msdk.core.s.d.ox {

    /* renamed from: d, reason: collision with root package name */
    private p.ox f1228d;
    private final int dq;
    private List<com.bytedance.msdk.core.no.no> jy;

    public s(Context context, int i) {
        super(context);
        this.dq = i;
    }

    private com.bytedance.msdk.core.no.d dq(com.bytedance.msdk.core.no.d dVar, com.bytedance.msdk.d.s sVar) {
        if (dVar == null || sVar == null) {
            return null;
        }
        double dk = sVar.dk();
        com.bytedance.msdk.dq.s.ox.d("TMe", "筛选预缓存 ecpm ".concat(String.valueOf(dk)));
        com.bytedance.msdk.core.no.d clone = dVar.clone();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (com.bytedance.msdk.core.no.no noVar : clone.t()) {
            if (noVar != null && noVar.ce() && noVar.k() > dk) {
                copyOnWriteArrayList.add(noVar);
            }
        }
        if (clone.no()) {
            clone.d(copyOnWriteArrayList);
            return clone;
        }
        clone.dq(copyOnWriteArrayList);
        return clone;
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        super.d(dqVar);
        p.ox oxVar = this.f1228d;
        if (oxVar != null) {
            int i = 20005;
            if (dqVar != null && dqVar.dq == 10003) {
                i = AVMDLDataLoader.KeyIsStoRingBufferSizeKB;
            }
            com.bytedance.msdk.core.no.d dVar = this.mn;
            oxVar.dq(dVar != null ? dVar.c() : "", false, i, null);
        }
    }

    @Override // com.bytedance.msdk.core.s.d.ox
    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, p.ox oxVar) {
        this.f1228d = oxVar;
        dq(dVar);
        this.ox.dq(true);
        this.ox.p(true);
        this.ox.gh().dq(dVar.dq());
        com.bytedance.msdk.core.no.d dq = dq(this.mn, sVar);
        this.mn = dq;
        this.ox.dq(dq);
        this.iw.iw(1);
        com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.core.ox.ox.dq(this.iw, this.mn);
        if (dq2 != null) {
            this.mn = dq2;
            this.ox.dq(dq2);
        }
        com.bytedance.msdk.core.no.d dVar2 = this.mn;
        if (dVar2 == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求未发起，mRitConfig为null");
            p.ox oxVar2 = this.f1228d;
            if (oxVar2 != null) {
                oxVar2.dq(this.s, false, 0, null);
                return;
            }
            return;
        }
        List<com.bytedance.msdk.core.no.no> t = dVar2.t();
        if (t == null || t.size() <= 0) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求未发起，过滤后的waterfall为空");
            p.ox oxVar3 = this.f1228d;
            if (oxVar3 != null) {
                oxVar3.dq(this.s, false, 0, null);
                return;
            }
            return;
        }
        this.mn.iw((long) (this.mn.ox() * r6.j()));
        this.mn.s((long) (this.mn.d() * r6.wn()));
        this.mn.d(false);
        this.mn.dq(false);
        List<com.bytedance.msdk.core.no.no> t2 = this.mn.t();
        this.jy = t2;
        ir.dq(t2, this.q);
        if (com.bytedance.msdk.dq.s.ox.d()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求，过滤后的waterfall：");
            for (com.bytedance.msdk.core.no.no noVar : this.jy) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.s) + "waterfall: " + noVar.jy() + "adnSlotId: " + noVar.cd() + ", loadSort: " + noVar.wp() + ", showSort: " + noVar.e() + ", eCpm: " + noVar.k());
            }
        }
        no();
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        super.kk();
        p.ox oxVar = this.f1228d;
        if (oxVar != null) {
            com.bytedance.msdk.core.no.d dVar = this.mn;
            oxVar.dq(dVar != null ? dVar.c() : "", true, 0, this.ox.ia());
        }
    }

    @Override // com.bytedance.msdk.ox.p.d
    public com.bytedance.msdk.ox.ox.dq.mn no() {
        ArrayList arrayList = new ArrayList();
        int i = this.dq;
        if (i == 3) {
            arrayList.add(new com.bytedance.msdk.ox.ox.dq.kk());
        } else if (i == 4) {
            arrayList.add(new com.bytedance.msdk.ox.ox.dq.o(this.ox, this.mn, this.jy));
        } else {
            arrayList.add(new com.bytedance.msdk.ox.ox.dq.d());
        }
        com.bytedance.msdk.ox.ox.dq.mn mnVar = new com.bytedance.msdk.ox.ox.dq.mn(arrayList);
        mnVar.dq(this.ox);
        return mnVar;
    }
}
