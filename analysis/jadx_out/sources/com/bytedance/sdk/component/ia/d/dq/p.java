package com.bytedance.sdk.component.ia.d.dq;

import android.content.Context;
import com.bytedance.sdk.component.ia.d.dq.dq.d.ia;
import com.bytedance.sdk.component.ia.d.dq.dq.d.mn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class p implements s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.ia.d.dq.dq.d.iw f1914d;
    private com.bytedance.sdk.component.ia.d.dq.dq.d.p dq;
    private com.bytedance.sdk.component.ia.d.p.d.dq ia;
    private com.bytedance.sdk.component.ia.d.p.d.dq ig;
    private ia iw;
    private com.bytedance.sdk.component.ia.d.p.d.dq kk;
    private com.bytedance.sdk.component.ia.d.p.d.dq mn;
    private com.bytedance.sdk.component.ia.dq.s mp;
    private com.bytedance.sdk.component.ia.d.p.d.dq no;
    private com.bytedance.sdk.component.ia.d.p.d.dq o;
    private com.bytedance.sdk.component.ia.d.dq.dq.d.s ox;
    private mn p;
    private List<com.bytedance.sdk.component.ia.d.dq.dq.d.d> q = new ArrayList();
    private com.bytedance.sdk.component.ia.d.dq.dq.d.dq s;

    public p(com.bytedance.sdk.component.ia.dq.s sVar) {
        this.mp = sVar;
        Context context = sVar.getContext();
        if (com.bytedance.sdk.component.ia.d.d.dq.dq(sVar)) {
            com.bytedance.sdk.component.ia.d.p.d.dq mn = this.mp.mn();
            this.mn = mn;
            com.bytedance.sdk.component.ia.d.dq.dq.d.p pVar = new com.bytedance.sdk.component.ia.d.dq.dq.d.p(context, mn, this.mp);
            this.dq = pVar;
            this.q.add(pVar);
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.s(sVar)) {
            if (this.mp.dq() != null) {
                this.kk = this.mp.dq();
            } else {
                this.kk = this.mp.ia();
            }
            com.bytedance.sdk.component.ia.d.dq.dq.d.s sVar2 = new com.bytedance.sdk.component.ia.d.dq.dq.d.s(context, this.kk, this.mp);
            this.ox = sVar2;
            this.q.add(sVar2);
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.d(sVar)) {
            com.bytedance.sdk.component.ia.d.p.d.dq ia = this.mp.ia();
            this.ia = ia;
            com.bytedance.sdk.component.ia.d.dq.dq.d.iw iwVar = new com.bytedance.sdk.component.ia.d.dq.dq.d.iw(context, ia, this.mp);
            this.f1914d = iwVar;
            this.q.add(iwVar);
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.ox(sVar)) {
            com.bytedance.sdk.component.ia.d.p.d.dq ia2 = this.mp.ia();
            this.o = ia2;
            mn mnVar = new mn(context, ia2, this.mp);
            this.p = mnVar;
            this.q.add(mnVar);
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.p(sVar)) {
            com.bytedance.sdk.component.ia.d.p.d.dq kk = this.mp.kk();
            this.no = kk;
            com.bytedance.sdk.component.ia.d.dq.dq.d.dq dqVar = new com.bytedance.sdk.component.ia.d.dq.dq.d.dq(context, kk, this.mp);
            this.s = dqVar;
            this.q.add(dqVar);
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.iw(sVar)) {
            com.bytedance.sdk.component.ia.d.p.d.dq iw = this.mp.iw();
            this.ig = iw;
            ia iaVar = new ia(context, iw, this.mp);
            this.iw = iaVar;
            this.q.add(iaVar);
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public d dq(int i, List<com.bytedance.sdk.component.ia.dq.d> list) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.dq.d.d> it = this.q.iterator();
        d dVar = null;
        while (it.hasNext()) {
            dVar = it.next().dq(i, list);
            if (dVar.dq()) {
                break;
            }
        }
        return dVar;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, String str) {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.dq.d.d> it = this.q.iterator();
        while (it.hasNext()) {
            List<com.bytedance.sdk.component.ia.dq.d> dq = it.next().dq(i, dVar, list, "db");
            if (dq != null && dq.size() != 0) {
                return dq;
            }
        }
        return null;
    }

    public List<com.bytedance.sdk.component.ia.dq.d> dq(com.bytedance.sdk.component.ia.dq.d dVar, int i, int i2) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.dq.d.d> it = this.q.iterator();
        while (it.hasNext()) {
            List<com.bytedance.sdk.component.ia.dq.d> dq = it.next().dq(i2, i, dVar);
            if (dq != null && dq.size() != 0) {
                return dq;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public void dq(com.bytedance.sdk.component.ia.dq.d dVar, int i) {
        if (dVar == null) {
            return;
        }
        try {
            dVar.d(System.currentTimeMillis());
            Iterator<com.bytedance.sdk.component.ia.d.dq.dq.d.d> it = this.q.iterator();
            while (it.hasNext()) {
                it.next().d(dVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.ox(), 1, this.mp);
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public boolean dq(int i, boolean z, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.dq.d.d> it = this.q.iterator();
        while (it.hasNext()) {
            if (it.next().dq(i, str, dVar)) {
                return true;
            }
        }
        return false;
    }
}
