package com.bytedance.msdk.core.s.d;

import android.content.Context;
import android.os.SystemClock;
import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.ia.n;
import g.tn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class s extends com.bytedance.msdk.core.mn.dq.dq implements d {
    private long dq;

    public s(Context context, String str, int i) {
        super(context, str, i);
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
        if (list == null) {
            return;
        }
        for (com.bytedance.msdk.d.s sVar : list) {
            if (sVar != null) {
                p.dq().dq(this.kk, new ig(sVar, this.dq, this.no));
            }
        }
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public void dq(Context context, com.bytedance.msdk.api.dq.d dVar, p.ox oxVar) {
        this.dq = SystemClock.currentThreadTimeMillis();
        p.dq().dq(this.kk, this.dq);
        this.no = dVar;
        this.t = null;
        this.bu = oxVar;
        ia();
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
    }

    @Override // com.bytedance.msdk.core.mn.iw, com.bytedance.msdk.core.mn.s, com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        super.dq(dqVar, oxVar);
        p.dq().dq(this.kk, oxVar.mp(), this.dq, dqVar);
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void dq(List<com.bytedance.msdk.core.no.no> list) {
        com.bytedance.msdk.d.s sVar;
        super.dq(list);
        Map<String, List<ig>> s = p.dq().s(this.kk);
        if (s == null || s.keySet() == null) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(s.keySet());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List<ig> list2 = s.get((String) it.next());
            if (list2 != null && list2.size() > 0) {
                for (ig igVar : list2) {
                    if (igVar != null && (sVar = igVar.dq) != null && sVar.jn()) {
                        copyOnWriteArrayList.add(igVar.dq);
                    }
                }
            }
        }
        if (copyOnWriteArrayList.size() == 0) {
            return;
        }
        if (n.dq(list)) {
            tn.y(this.kk, "处理预缓存逻辑......没有胜出的普通广告，普通广告被全部过滤掉了", "TTMediationSDK", new StringBuilder());
            return;
        }
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            com.bytedance.msdk.d.s sVar2 = (com.bytedance.msdk.d.s) it2.next();
            Iterator<com.bytedance.msdk.core.no.no> it3 = list.iterator();
            while (true) {
                if (it3.hasNext()) {
                    com.bytedance.msdk.core.no.no next = it3.next();
                    if (sVar2 != null && next != null && sVar2.b().equals(next.cd())) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "处理预缓存逻辑......已经响应的广告: " + sVar2.b() + "  没有在severBidding的waterFall列表中，需要被移除掉");
                        copyOnWriteArrayList.remove(sVar2);
                        break;
                    }
                }
            }
        }
        Iterator it4 = copyOnWriteArrayList.iterator();
        while (it4.hasNext()) {
            com.bytedance.msdk.d.s sVar3 = (com.bytedance.msdk.d.s) it4.next();
            if (sVar3 != null) {
                s.remove(sVar3.b());
            }
        }
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public boolean i_() {
        return true;
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public com.bytedance.msdk.ox.s.dq.d iw() {
        return null;
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
    }
}
