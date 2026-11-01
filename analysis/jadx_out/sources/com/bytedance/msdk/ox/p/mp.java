package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.msdk.api.p.f;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import g.tn;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class mp extends d implements com.bytedance.msdk.dq.d.s {
    private com.bytedance.msdk.api.p.dq.kk.s cd;

    /* renamed from: d, reason: collision with root package name */
    private boolean f1213d;
    private boolean dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.kk.ox f1214f;
    private com.bytedance.msdk.api.p.dq.kk.d fw;
    private com.bytedance.msdk.api.p.dq.kk.p gh;
    private View jy;

    public mp(Context context) {
        super(context);
        this.dq = false;
        this.f1213d = false;
    }

    private void dq(com.bytedance.msdk.d.s sVar, ViewGroup viewGroup) {
        this.p = sVar;
        if (this.f1213d) {
            sVar.bl();
        }
        com.bytedance.msdk.api.p.dq.d dVar = this.mp;
        if (dVar != null) {
            this.p.dq(dVar);
        }
        this.ox.dq(this.p);
        this.p.iw(true);
        this.p.dq(this.kk);
        if (this.p.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, this.p.b(), i())) {
            com.bytedance.msdk.d.s sVar2 = this.p;
            com.bytedance.msdk.ox.mn.p.dq(sVar2, this.s, sVar2.b());
        }
        com.bytedance.msdk.core.s.dq.dq.dq().dq(this.ox.r(), this.s, this.iw, i(), this.p);
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.msdk.dq.s.s.dq(this.s, "show"));
        sb.append("展示的广告类型：");
        sb.append(com.bytedance.msdk.d.dq.dq(this.p.hf()));
        sb.append(",slotId：");
        tn.a(this.p, sb, ",slotType:");
        sb.append(this.p.y());
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
        com.bytedance.msdk.core.kk.mp.dq().d(this.s);
        com.bytedance.msdk.core.kk.ig.dq().d(this.s, this.p.b());
        this.p.dq(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(ViewGroup viewGroup) {
        boolean z;
        boolean z2;
        List<com.bytedance.msdk.core.s.d.ig> dq;
        com.bytedance.msdk.d.s sVar;
        com.bytedance.msdk.core.no.d dVar = this.mn;
        List<com.bytedance.msdk.core.no.no> list = null;
        com.bytedance.msdk.s.iw.dq(this.iw, dVar != null ? dVar.gx() : null);
        if (this.ig) {
            com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.iw, 0);
            ox(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            return;
        }
        int d2 = d.d(this.s);
        if (d2 != 0) {
            com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.iw, d2);
            ox(new com.bytedance.msdk.api.dq(d2, com.bytedance.msdk.api.dq.dq(d2)));
            return;
        }
        List<com.bytedance.msdk.d.s> r = this.ox.r();
        if (viewGroup == null) {
            com.bytedance.msdk.s.iw.dq(r, this.iw, 0);
            ox(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            return;
        }
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (list != null && list.size() > 0) {
            HashMap<String, com.bytedance.msdk.d.s> d3 = d(r);
            for (com.bytedance.msdk.core.no.no noVar : list) {
                if (noVar != null) {
                    String cd = noVar.cd();
                    com.bytedance.msdk.d.s sVar2 = d3.get(cd);
                    if (sVar2 != null && sVar2.u(this.s) && !sVar2.xi()) {
                        dq(sVar2, viewGroup);
                    } else if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.iw, false) == 3 && (dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.iw, i())) != null && dq.size() > 0 && (sVar = dq.get(0).dq) != null && sVar.u(this.s) && !sVar.xi()) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.s, "show") + "adSlotId：" + sVar.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.s));
                        d(sVar);
                        dq(sVar, viewGroup);
                    }
                    z = true;
                    z2 = true;
                    break;
                }
            }
        }
        z = false;
        z2 = false;
        if (!z && r != null && r.size() > 0) {
            Iterator<com.bytedance.msdk.d.s> it = r.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.bytedance.msdk.d.s next = it.next();
                if (next != null && next.u(this.s) && !next.xi()) {
                    dq(next, viewGroup);
                    z2 = true;
                    break;
                }
            }
        }
        if (!z2) {
            com.bytedance.msdk.s.iw.dq(r, this.iw, 0);
            ox(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            return;
        }
        this.ig = true;
        if (this.p != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.p);
            dq(arrayList);
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, false, 0);
    }

    private void ox(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.mp.3
            @Override // java.lang.Runnable
            public void run() {
                if (mp.this.fw != null) {
                    mp.this.fw.d_(dqVar);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void A_() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.gh;
        if (pVar != null) {
            pVar.ox();
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void F_() {
        com.bytedance.msdk.api.p.dq.kk.s sVar = this.cd;
        if (sVar != null) {
            sVar.dq();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void d(int i) {
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.fw;
        if (dVar != null) {
            dVar.d(i);
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.ia.get(), this.s, i());
    }

    public void d(ViewGroup viewGroup) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.d(viewGroup);
        }
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.kk.ox oxVar = this.f1214f;
        if (oxVar != null) {
            oxVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void d_(com.bytedance.msdk.api.dq dqVar) {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, dqVar, 1, 0, str, j);
        ox(dqVar);
    }

    @Override // com.bytedance.msdk.ox.p.d
    public void dq() {
        if (this.p == null) {
            com.bytedance.msdk.core.s.dq.dq dq = com.bytedance.msdk.core.s.dq.dq.dq();
            List<com.bytedance.msdk.d.s> r = this.ox.r();
            String str = this.s;
            com.bytedance.msdk.api.dq.d dVar = this.iw;
            dq.dq(r, str, dVar, dVar.s(), this.p);
        }
        super.dq();
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void dq(int i) {
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.fw;
        if (dVar != null) {
            dVar.dq(1);
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.ia.get(), this.s, i());
    }

    public void dq(final ViewGroup viewGroup) {
        dq((com.bytedance.msdk.d.s) null);
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.mp.2
            @Override // java.lang.Runnable
            public void run() {
                mp.this.ox(viewGroup);
            }
        });
    }

    public void dq(ViewGroup viewGroup, Activity activity) {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.dq(viewGroup, activity);
        }
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.no noVar, com.bytedance.msdk.api.p.dq.kk.ox oxVar) {
        dq(dVar);
        this.ox.dq(noVar);
        this.f1214f = oxVar;
        this.kk = this;
        this.ox.bl().put("ad_load_timeout", Integer.valueOf(dVar.fw()));
        if (com.bytedance.msdk.core.dq.d().ji()) {
            com.bytedance.msdk.api.p.o.dq(new f() { // from class: com.bytedance.msdk.ox.p.mp.1
                @Override // com.bytedance.msdk.api.p.f
                public void dq() {
                    mp.this.no();
                }
            });
        } else {
            no();
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.d dVar) {
        this.fw = dVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.p pVar) {
        this.gh = pVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.s sVar) {
        this.cd = sVar;
    }

    public boolean e() {
        List<com.bytedance.msdk.core.no.no> list;
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return jy.dq(this.ox.mn(), this.ox.o(), this.ox.ia(), this.iw, this.ig, new AtomicBoolean(this.ox.d()), this.s, this.iw.s(), list, dVar != null ? dVar.gx() : null);
    }

    @Override // com.bytedance.msdk.dq.d.s
    public Activity getActivity() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.gh;
        if (pVar != null) {
            return pVar.getActivity();
        }
        return null;
    }

    public void h() {
        if (this.p.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, this.p.b(), i())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.p.b(), this.iw, this.ox.bl(), true, this.ox.n(), this.ox.c(), this.ia.get());
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void iw() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.gh;
        if (pVar != null) {
            pVar.p();
        }
    }

    public void ji() {
        this.f1213d = true;
    }

    public View k() {
        return null;
    }

    @Override // com.bytedance.msdk.ox.p.d, com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
        com.bytedance.msdk.api.p.dq.kk.ox oxVar = this.f1214f;
        if (oxVar != null) {
            oxVar.dq();
        }
    }

    public View kx() {
        SoftReference<Context> softReference = this.ia;
        Context context = softReference != null ? softReference.get() : null;
        if (this.jy == null && context != null) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            ox(frameLayout);
            this.jy = frameLayout;
        }
        return this.jy;
    }

    public View le() {
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void mn() {
        String str;
        long j;
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.fw;
        if (dVar != null) {
            dVar.mn();
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str2 = str;
        long j2 = j;
        com.bytedance.msdk.core.d.dq.s(this.iw.k());
        com.bytedance.msdk.d.s sVar = this.p;
        com.bytedance.msdk.s.iw.d(sVar, this.iw, 0, str2, j2, sVar.by());
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void w_() {
        String str;
        long j;
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.fw;
        if (dVar != null) {
            dVar.w_();
        }
        com.bytedance.msdk.core.kk.mp.dq().mn(this.s);
        if (this.p != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.msdk.dq.s.s.dq(this.s, "show_listen"));
            sb.append("adSlotId：");
            tn.a(this.p, sb, "，广告类型：");
            sb.append(com.bytedance.msdk.d.dq.dq(this.p.hf()));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
            com.bytedance.msdk.core.kk.no.dq().d(this.s, this.p.b());
        }
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            com.bytedance.msdk.core.ox.ox.dq(sVar.wi(), this.s, this.p.b());
        }
        h();
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.p)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.p, this.iw, 0, str, j, false);
        com.bytedance.msdk.core.d.dq.mn(this.iw.k());
        com.bytedance.msdk.core.d.dq.ox(this.iw.k());
        com.bytedance.msdk.core.o.p.dq(1, this.iw.k(), this.p.qz(), this.p.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.s, this.p);
    }

    public int[] wp() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            return sVar.ji();
        }
        return null;
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void x_() {
        com.bytedance.msdk.api.p.dq.kk.s sVar = this.cd;
        if (sVar != null) {
            sVar.d();
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void y_() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.gh;
        if (pVar != null) {
            pVar.dq();
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void z_() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.gh;
        if (pVar != null) {
            pVar.d();
        }
    }
}
