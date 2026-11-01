package com.bytedance.msdk.core.admanager;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.core.ig.dq;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.ia.n;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ia extends p {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.ox f800d;
    private com.bytedance.msdk.api.p.dq.mn.s dq;
    private boolean ox;

    public ia(Context context, String str) {
        super(context, str, 5);
        this.ox = false;
    }

    private void d(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ox oxVar) {
        com.bytedance.msdk.core.no.d dVar2 = this.mn;
        if (dVar2 != null && dVar2.ig()) {
            this.f800d = oxVar;
            dq(dVar);
        } else if (oxVar != null) {
            oxVar.dq(new com.bytedance.msdk.api.dq(10014, com.bytedance.msdk.api.dq.dq(10014)));
        }
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

    private List<com.bytedance.msdk.api.p.dq.mn.dq> dq(List<com.bytedance.msdk.d.s> list, int i) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.bytedance.msdk.d.s> it = list.iterator();
        while (it.hasNext() && arrayList2.size() < i) {
            com.bytedance.msdk.d.s next = it.next();
            arrayList.add(next);
            if (com.bytedance.msdk.dq.s.ox.d()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "");
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk, "show") + "返回给开发者最终广告：slotId=" + next.b() + ",slotType:" + next.y() + ",cpm=" + next.dk() + ",广告类型：" + com.bytedance.msdk.d.dq.dq(next.hf()) + ",ImageMode=" + next.yo() + ",showSort=" + next.wq() + ",isExpressAd=" + next.mc());
            }
            arrayList2.add(new com.bytedance.msdk.core.ig.dq(next, this.no, new dq.InterfaceC0057dq() { // from class: com.bytedance.msdk.core.admanager.ia.1
                @Override // com.bytedance.msdk.core.ig.dq.InterfaceC0057dq
                public void dq() {
                    ((com.bytedance.msdk.core.mn.s) ia.this).uh = true;
                }

                @Override // com.bytedance.msdk.core.ig.dq.InterfaceC0057dq
                public void dq(com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
                    boolean z;
                    if (com.bytedance.msdk.core.s.d.p.dq().ox(((com.bytedance.msdk.core.mn.ox) ia.this).kk, ia.this.i()) || ia.this.ox) {
                        z = false;
                    } else {
                        z = true;
                        ia.this.ox = true;
                    }
                    ia.this.dq(dqVar, z);
                    ia.this.dq(dqVar);
                }
            }));
            it.remove();
        }
        d(arrayList);
        return arrayList2;
    }

    private void dq(com.bytedance.msdk.api.dq.d dVar) {
        if (ig()) {
            this.no = dVar;
            ia();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        com.bytedance.msdk.core.no.d dVar;
        com.bytedance.msdk.d.s ox = dqVar.ox();
        if (ox == null || ox.hf() == 7 || (ox instanceof com.bytedance.msdk.api.p.dq.d.ox) || (dVar = this.mn) == null || dVar.ig()) {
            return;
        }
        com.bytedance.msdk.core.s.d.p.dq().d(this.l.get(), this.kk, i());
    }

    private void dq(String str, List<com.bytedance.msdk.d.s> list) {
        List<ig> dq;
        com.bytedance.msdk.d.s sVar;
        if (d(str, list) || com.bytedance.msdk.core.s.dq.dq.dq().dq(str, this.no, false) != 3 || (dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(str, this.no, i())) == null || dq.size() <= 0) {
            return;
        }
        for (ig igVar : dq) {
            if (igVar != null && (sVar = igVar.dq) != null && !sVar.xi() && igVar.dq.u(this.kk)) {
                list.add(igVar.dq);
                p(igVar.dq);
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

    private void mn(List<com.bytedance.msdk.d.s> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        list.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.bytedance.msdk.d.s sVar = (com.bytedance.msdk.d.s) it.next();
            if (sVar != null && !sVar.xi() && sVar.u(j())) {
                list.add(sVar);
            }
        }
    }

    private List<com.bytedance.msdk.api.p.dq.mn.dq> mp() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if (dVar == null) {
            return null;
        }
        int h = dVar.h();
        mn(this.r);
        mn(this.gh);
        mn(this.cd);
        no();
        List<com.bytedance.msdk.d.s> l = l();
        return l.size() >= h ? dq(l, h) : dq(l, h);
    }

    private void no() {
        try {
            List<com.bytedance.msdk.core.no.no> h_ = h_();
            if (h_ == null || h_.size() <= 0) {
                return;
            }
            for (com.bytedance.msdk.core.no.no noVar : h_) {
                if (noVar != null) {
                    String cd = noVar.cd();
                    if (com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i())) {
                        if (noVar.gh() == 100) {
                            dq(cd, this.r);
                        } else if (noVar.gh() == 0) {
                            dq(cd, this.cd);
                        }
                    }
                }
            }
            com.bytedance.msdk.core.mn.mn.dq(this.r, (Comparator<com.bytedance.msdk.d.s>) null);
            com.bytedance.msdk.core.mn.mn.dq(this.cd, (Comparator<com.bytedance.msdk.d.s>) null);
            com.bytedance.msdk.core.mn.mn.dq(this.gh, com.bytedance.msdk.core.mn.mn.dq());
            com.bytedance.msdk.dq.s.ox.dq("TMe", "--==-- sorted ok");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d() {
        super.d();
        this.dq = null;
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ox oxVar;
        super.d(dqVar);
        if (this.bl != 0 || (oxVar = this.f800d) == null) {
            return;
        }
        this.bl = 2;
        oxVar.dq(dqVar);
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.mn.s sVar) {
        if (!com.bytedance.msdk.core.dq.d().dq(j(), 5) && sVar != null) {
            sVar.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
            return;
        }
        if (dVar == null || (com.bytedance.msdk.core.dq.d().gh() && com.bytedance.msdk.core.dq.d().le())) {
            this.dq = sVar;
            dq(dVar);
        } else if (sVar != null) {
            sVar.dq(new com.bytedance.msdk.api.dq(840035, com.bytedance.msdk.api.dq.dq(840035)));
        }
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.ox oxVar) {
        if (!com.bytedance.msdk.core.dq.d().dq(j(), 5) && oxVar != null) {
            oxVar.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
            return;
        }
        if (dVar == null || (com.bytedance.msdk.core.dq.d().gh() && com.bytedance.msdk.core.dq.d().le())) {
            d(dVar, oxVar);
        } else if (oxVar != null) {
            oxVar.dq(new com.bytedance.msdk.api.dq(840035, com.bytedance.msdk.api.dq.dq(840035)));
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.ox oxVar;
        com.bytedance.msdk.api.p.dq.mn.s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(dqVar);
        }
        if (this.bl != 0 || this.ji || (oxVar = this.f800d) == null) {
            return;
        }
        this.bl = 2;
        oxVar.dq(dqVar);
    }

    public void dq(com.bytedance.msdk.api.p.dq.mn.dq dqVar, boolean z) {
        com.bytedance.msdk.d.s ox = dqVar.ox();
        if (ox != null && ox.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, dqVar.fw(), i())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(dqVar.fw(), this.no, this.i, z, this.ha, this.f963e, this.l.get());
        }
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void dq(String str) {
        com.bytedance.msdk.api.p.dq.ox oxVar;
        super.dq(str);
        if (this.bl != 0 || (oxVar = this.f800d) == null) {
            return;
        }
        this.bl = 1;
        oxVar.dq(str);
    }

    public void dq(String str, com.bytedance.msdk.api.p.dq.mn.s sVar) {
        if (this.bl != 1) {
            if (sVar != null) {
                sVar.dq(new com.bytedance.msdk.api.dq(10015, com.bytedance.msdk.api.dq.dq(10015)));
                return;
            }
            return;
        }
        if (this.ji) {
            if (sVar != null) {
                sVar.dq(new com.bytedance.msdk.api.dq(40047, com.bytedance.msdk.api.dq.dq(40047)));
            }
        } else {
            if (this.xz) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "调用过销毁方法_destroy()！！！");
                if (sVar != null) {
                    sVar.dq(new com.bytedance.msdk.api.dq(41044, com.bytedance.msdk.api.dq.dq(41044)));
                    return;
                }
                return;
            }
            if (this.le.dq()) {
                if (sVar != null) {
                    sVar.dq(new com.bytedance.msdk.api.dq(10010, "Ad load timeout!"));
                }
            } else {
                this.ji = true;
                this.dq = sVar;
                p(str);
            }
        }
    }

    @Override // com.bytedance.msdk.core.mn.ox
    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar) {
        super.dq(list, dqVar);
        if (!(this.dq instanceof com.bytedance.msdk.api.p.dq.mn.ia) || n.dq(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<com.bytedance.msdk.d.s> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.bytedance.msdk.core.ig.dq(it.next(), this.no, new dq.InterfaceC0057dq() { // from class: com.bytedance.msdk.core.admanager.ia.2
                @Override // com.bytedance.msdk.core.ig.dq.InterfaceC0057dq
                public void dq() {
                    ((com.bytedance.msdk.core.mn.s) ia.this).uh = true;
                }

                @Override // com.bytedance.msdk.core.ig.dq.InterfaceC0057dq
                public void dq(com.bytedance.msdk.api.p.dq.mn.dq dqVar2) {
                    ia.this.dq(dqVar2, false);
                }
            }));
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
        List<com.bytedance.msdk.api.p.dq.mn.dq> mp;
        if (this.dq == null || (mp = mp()) == null || mp.size() <= 0) {
            return;
        }
        if (com.bytedance.msdk.dq.s.ox.d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "返回给外部开发者的广告数量：sumList.size=" + mp.size());
        }
        CopyOnWriteArrayList<com.bytedance.msdk.d.s> copyOnWriteArrayList = new CopyOnWriteArrayList<>(l());
        for (com.bytedance.msdk.api.p.dq.mn.dq dqVar : mp) {
            if (dqVar != null) {
                if (dqVar instanceof com.bytedance.msdk.core.ig.dq) {
                    ((com.bytedance.msdk.core.ig.dq) dqVar).ox(true);
                }
                if (dqVar.n() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, dqVar.fw(), i())) {
                    dq(dqVar.ox(), dqVar.fw());
                    dq(copyOnWriteArrayList, dqVar.ox());
                }
            }
        }
        com.bytedance.msdk.core.s.dq.dq.dq().dq(copyOnWriteArrayList, this.kk, this.no, i(), null);
        this.dq.dq(mp);
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
    }
}
