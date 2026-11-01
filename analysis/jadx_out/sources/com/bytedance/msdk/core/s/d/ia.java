package com.bytedance.msdk.core.s.d;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.ia.ir;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class ia extends com.bytedance.msdk.core.mn.dq.dq implements ox {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.d.s f1015d;
    protected List<com.bytedance.msdk.core.no.no> dq;

    public ia(Context context, String str, int i) {
        super(context, str, i);
        this.dq = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.msdk.core.no.d dq(com.bytedance.msdk.core.no.d dVar, com.bytedance.msdk.d.s sVar) {
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

    @Override // com.bytedance.msdk.core.mn.s, com.bytedance.msdk.core.mn.ox
    public void d(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求：invokeAdFailed");
        ij();
        if (this.s.get() || this.p.get()) {
            return;
        }
        this.s.set(true);
        p.ox oxVar2 = this.bu;
        if (oxVar2 != null) {
            int i = 10086;
            if (dqVar != null && dqVar.dq == 10003) {
                i = AVMDLDataLoader.KeyIsStoRingBufferSizeKB;
            }
            oxVar2.dq(this.kk, false, i, null);
        }
    }

    @Override // com.bytedance.msdk.core.s.d.ox
    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, p.ox oxVar) {
        this.no = dVar;
        this.f1015d = sVar;
        this.t = null;
        this.bu = oxVar;
        ia();
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ia() {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.d.ia.1
            @Override // java.lang.Runnable
            public void run() {
                ia.this.l_();
                ((com.bytedance.msdk.core.mn.ox) ia.this).no.iw(1);
                if (((com.bytedance.msdk.core.mn.s) ia.this).ob != null) {
                    com.bytedance.msdk.core.no.d dq = ((com.bytedance.msdk.core.mn.s) ia.this).ob.dq(((com.bytedance.msdk.core.mn.ox) ia.this).kk, ia.this.gh(), 102);
                    ia iaVar = ia.this;
                    ((com.bytedance.msdk.core.mn.ox) iaVar).mn = iaVar.dq(dq, iaVar.f1015d);
                    com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.core.ox.ox.dq(((com.bytedance.msdk.core.mn.ox) ia.this).no, ((com.bytedance.msdk.core.mn.ox) ia.this).mn);
                    if (dq2 != null) {
                        ((com.bytedance.msdk.core.mn.ox) ia.this).mn = dq2;
                    }
                    if (((com.bytedance.msdk.core.mn.ox) ia.this).mn == null) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求未发起，mRitConfig为null");
                        if (((com.bytedance.msdk.core.mn.s) ia.this).bu != null) {
                            ((com.bytedance.msdk.core.mn.s) ia.this).bu.dq(((com.bytedance.msdk.core.mn.ox) ia.this).kk, false, 0, null);
                            return;
                        }
                        return;
                    }
                    ((com.bytedance.msdk.core.mn.ox) ia.this).mn.iw((long) (((com.bytedance.msdk.core.mn.ox) ia.this).mn.ox() * ((com.bytedance.msdk.core.mn.ox) ia.this).mn.j()));
                    ((com.bytedance.msdk.core.mn.ox) ia.this).mn.s((long) (((com.bytedance.msdk.core.mn.ox) ia.this).mn.d() * ((com.bytedance.msdk.core.mn.ox) ia.this).mn.wn()));
                    ((com.bytedance.msdk.core.mn.ox) ia.this).mn.d(false);
                    ((com.bytedance.msdk.core.mn.ox) ia.this).mn.dq(false);
                    ia.this.v();
                }
                ((com.bytedance.msdk.core.mn.ox) ia.this).no.dq(((com.bytedance.msdk.core.mn.ox) ia.this).mn);
                ((com.bytedance.msdk.core.mn.ox) ia.this).no.kk();
                List<com.bytedance.msdk.core.no.no> t = ((com.bytedance.msdk.core.mn.ox) ia.this).mn.t();
                if (t == null || t.size() <= 0) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求未发起，过滤后的waterfall为空");
                    if (((com.bytedance.msdk.core.mn.s) ia.this).bu != null) {
                        ((com.bytedance.msdk.core.mn.s) ia.this).bu.dq(((com.bytedance.msdk.core.mn.ox) ia.this).kk, false, 0, null);
                        return;
                    }
                    return;
                }
                ia.this.ws();
                ia iaVar2 = ia.this;
                ((com.bytedance.msdk.core.mn.ox) iaVar2).ia = ((com.bytedance.msdk.core.mn.ox) iaVar2).mn.kx();
                ((com.bytedance.msdk.core.mn.ox) ia.this).fw = new ArrayList(((com.bytedance.msdk.core.mn.ox) ia.this).mn.u());
                ia iaVar3 = ia.this;
                iaVar3.dq = ((com.bytedance.msdk.core.mn.ox) iaVar3).mn.t();
                ia iaVar4 = ia.this;
                ir.dq(iaVar4.dq, ((com.bytedance.msdk.core.mn.s) iaVar4).ij);
                if (com.bytedance.msdk.dq.s.ox.d()) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求，过滤后的waterfall：");
                    for (com.bytedance.msdk.core.no.no noVar : ia.this.dq) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(((com.bytedance.msdk.core.mn.ox) ia.this).kk) + "waterfall: " + noVar.jy() + ", loadSort: " + noVar.wp() + ", showSort: " + noVar.e() + ", eCpm: " + noVar.k());
                    }
                }
                com.bytedance.msdk.core.mn.d.dq(((com.bytedance.msdk.core.mn.ox) ia.this).fw);
                ((com.bytedance.msdk.core.mn.ox) ia.this).le.dq(((com.bytedance.msdk.core.mn.ox) ia.this).fw);
                ((com.bytedance.msdk.core.mn.ox) ia.this).le.dq(((com.bytedance.msdk.core.mn.ox) ia.this).mn.k());
                if (((com.bytedance.msdk.core.mn.ox) ia.this).o != null) {
                    ((com.bytedance.msdk.core.mn.ox) ia.this).o.sendEmptyMessageDelayed(2, ((com.bytedance.msdk.core.mn.s) ia.this).nh);
                }
                ((com.bytedance.msdk.core.mn.ox) ia.this).k.set(true);
                ia.this.cv();
            }
        });
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void l_() {
        this.no.p(i());
        this.no.d(k());
        this.no.dq(com.bytedance.msdk.core.mn.mn.p());
        this.no.ox(p.dq().d(this.kk, i()));
    }

    @Override // com.bytedance.msdk.core.mn.s, com.bytedance.msdk.core.mn.ox
    public void n_() {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求：invokeAdLoaded");
        ij();
        if (this.p.get() || this.s.get()) {
            return;
        }
        this.p.set(true);
        p.ox oxVar = this.bu;
        if (oxVar != null) {
            oxVar.dq(this.kk, true, 0, this.cd);
        }
    }
}
