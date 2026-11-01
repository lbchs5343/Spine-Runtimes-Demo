package com.bytedance.msdk.ox.p;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.core.ia.dq;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class mn extends d {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.ox f1211d;
    private com.bytedance.msdk.api.p.dq.ox.ox dq;
    private dq.InterfaceC0088dq jy;

    public mn(Context context) {
        super(context);
    }

    private boolean d(String str, List<com.bytedance.msdk.d.s> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        for (com.bytedance.msdk.d.s sVar : list) {
            if (sVar != null && TextUtils.equals(str, sVar.b())) {
                return true;
            }
        }
        return false;
    }

    private List<com.bytedance.msdk.api.p.dq.ox.dq> dq(List<com.bytedance.msdk.d.s> list, int i) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ox(list);
        ox();
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        Iterator<com.bytedance.msdk.d.s> it = list.iterator();
        while (it.hasNext() && arrayList2.size() < i) {
            com.bytedance.msdk.d.s next = it.next();
            arrayList.add(next);
            if (com.bytedance.msdk.dq.s.ox.d()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "");
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.s, "show") + "返回给开发者最终广告：slotId=" + next.b() + ",slotType:" + next.y() + ",cpm=" + next.dk() + ",广告类型：" + com.bytedance.msdk.d.dq.dq(next.hf()) + ",ImageMode=" + next.yo() + ",showSort=" + next.wq() + ",isExpressAd=" + next.mc());
            }
            arrayList2.add(new com.bytedance.msdk.core.ia.dq(next, this.iw, new dq.InterfaceC0056dq() { // from class: com.bytedance.msdk.ox.p.mn.2
                @Override // com.bytedance.msdk.core.ia.dq.InterfaceC0056dq
                public void dq() {
                    mn.this.ig = true;
                }

                @Override // com.bytedance.msdk.core.ia.dq.InterfaceC0056dq
                public void dq(com.bytedance.msdk.api.p.dq.ox.dq dqVar) {
                    int i2 = 0;
                    while (i2 < arrayList2.size() && dqVar != arrayList2.get(i2)) {
                        i2++;
                    }
                    mn.this.dq(dqVar, i2);
                }
            }));
            it.remove();
        }
        dq(arrayList);
        return arrayList2;
    }

    private void dq(String str, List<com.bytedance.msdk.d.s> list) {
        com.bytedance.msdk.d.s sVar;
        if (d(str, list) || com.bytedance.msdk.core.s.dq.dq.dq().dq(str, this.iw, false) != 3) {
            return;
        }
        com.bytedance.msdk.core.s.dq.dq dq = com.bytedance.msdk.core.s.dq.dq.dq();
        com.bytedance.msdk.api.dq.d dVar = this.iw;
        List<com.bytedance.msdk.core.s.d.ig> dq2 = dq.dq(str, dVar, dVar.s());
        if (dq2 == null || dq2.size() <= 0) {
            return;
        }
        for (com.bytedance.msdk.core.s.d.ig igVar : dq2) {
            if (igVar != null && (sVar = igVar.dq) != null && !sVar.xi() && igVar.dq.u(this.s)) {
                list.add(igVar.dq);
                d(igVar.dq);
            }
        }
    }

    private void dq(CopyOnWriteArrayList<com.bytedance.msdk.d.s> copyOnWriteArrayList, com.bytedance.msdk.d.s sVar) {
        Iterator<com.bytedance.msdk.d.s> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            com.bytedance.msdk.d.s next = it.next();
            if (next == sVar) {
                copyOnWriteArrayList.remove(next);
            }
        }
    }

    private void ox() {
        try {
            List<com.bytedance.msdk.core.no.no> h_ = h_();
            if (h_ == null || h_.size() <= 0) {
                return;
            }
            for (com.bytedance.msdk.core.no.no noVar : h_) {
                if (noVar != null) {
                    String cd = noVar.cd();
                    if (com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, cd, this.iw.s())) {
                        if (noVar.gh() == 100) {
                            dq(cd, this.ox.mn());
                        } else if (noVar.gh() == 0) {
                            dq(cd, this.ox.ia());
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void ox(List<com.bytedance.msdk.d.s> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        list.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.bytedance.msdk.d.s sVar = (com.bytedance.msdk.d.s) it.next();
            if (sVar != null && !sVar.xi() && sVar.u(this.s)) {
                list.add(sVar);
            }
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ox oxVar;
        com.bytedance.msdk.api.p.dq.ox.ox oxVar2 = this.dq;
        if (oxVar2 != null) {
            oxVar2.dq(dqVar);
            if (this.no != 0 || (oxVar = this.f1211d) == null) {
                return;
            }
            this.no = 2;
            oxVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.ox.p.d
    public void dq() {
        super.dq();
        this.dq = null;
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ox.ox oxVar) {
        dq(dVar);
        this.dq = oxVar;
        no();
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ox oxVar) {
        dq(dVar);
        this.f1211d = oxVar;
        if (this.ox.ig() != null && this.ox.ig().ig()) {
            this.jy = no();
        } else if (oxVar != null) {
            oxVar.dq(new com.bytedance.msdk.api.dq(10014, com.bytedance.msdk.api.dq.dq(10014)));
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.ox.dq dqVar, int i) {
        com.bytedance.msdk.d.s p = dqVar.p();
        if (p != null && p.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, dqVar.cd(), this.iw.s())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(dqVar.cd(), this.iw, this.ox.bl(), i == 0, this.ox.n(), this.ox.c(), this.ia.get());
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void dq(String str) {
        com.bytedance.msdk.api.p.dq.ox oxVar;
        if (this.no != 0 || (oxVar = this.f1211d) == null) {
            return;
        }
        this.no = 1;
        oxVar.dq(str);
    }

    public void dq(String str, com.bytedance.msdk.api.p.dq.ox.ox oxVar) {
        if (this.no != 1) {
            if (oxVar != null) {
                oxVar.dq(new com.bytedance.msdk.api.dq(10015, com.bytedance.msdk.api.dq.dq(10015)));
            }
        } else if (this.o) {
            if (oxVar != null) {
                oxVar.dq(new com.bytedance.msdk.api.dq(40047, com.bytedance.msdk.api.dq.dq(40047)));
            }
        } else {
            this.o = true;
            this.dq = oxVar;
            dq.InterfaceC0088dq interfaceC0088dq = this.jy;
            if (interfaceC0088dq != null) {
                interfaceC0088dq.dq(str);
            }
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar) {
        super.dq(list, dqVar);
        if (!(this.dq instanceof com.bytedance.msdk.api.p.dq.ox.iw) || n.dq(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<com.bytedance.msdk.d.s> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.bytedance.msdk.core.ia.dq(it.next(), this.iw, new dq.InterfaceC0056dq() { // from class: com.bytedance.msdk.ox.p.mn.1
                @Override // com.bytedance.msdk.core.ia.dq.InterfaceC0056dq
                public void dq() {
                    mn.this.ig = true;
                }

                @Override // com.bytedance.msdk.core.ia.dq.InterfaceC0056dq
                public void dq(com.bytedance.msdk.api.p.dq.ox.dq dqVar2) {
                    mn.this.dq(dqVar2, -1);
                }
            }));
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        List<com.bytedance.msdk.api.p.dq.ox.dq> dq;
        if (this.dq == null || (dq = dq(this.ox.r(), this.iw.h())) == null || dq.size() <= 0) {
            return;
        }
        if (com.bytedance.msdk.dq.s.ox.d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "返回给外部开发者的广告数量：sumList.size=" + dq.size());
        }
        CopyOnWriteArrayList<com.bytedance.msdk.d.s> copyOnWriteArrayList = new CopyOnWriteArrayList<>(this.ox.r());
        for (com.bytedance.msdk.api.p.dq.ox.dq dqVar : dq) {
            if (dqVar != null) {
                if (dqVar instanceof com.bytedance.msdk.core.ia.dq) {
                    ((com.bytedance.msdk.core.ia.dq) dqVar).ox(true);
                }
                if (dqVar.op() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, dqVar.cd(), this.iw.s())) {
                    com.bytedance.msdk.ox.mn.p.dq(dqVar.p(), this.s, dqVar.cd());
                    dq(copyOnWriteArrayList, dqVar.p());
                }
            }
        }
        com.bytedance.msdk.core.s.dq.dq dq2 = com.bytedance.msdk.core.s.dq.dq.dq();
        String str = this.s;
        com.bytedance.msdk.api.dq.d dVar = this.iw;
        dq2.dq(copyOnWriteArrayList, str, dVar, dVar.s(), null);
        this.dq.dq(dq);
    }
}
