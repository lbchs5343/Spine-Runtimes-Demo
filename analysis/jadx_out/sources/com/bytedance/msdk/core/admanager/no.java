package com.bytedance.msdk.core.admanager;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.msdk.api.p.f;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class no extends p implements com.bytedance.msdk.dq.d.s {
    private View ce;

    /* renamed from: d, reason: collision with root package name */
    private boolean f807d;
    private Context dq;
    private com.bytedance.msdk.api.p.dq.kk.ox er;
    private com.bytedance.msdk.api.p.dq.kk.s io;
    private com.bytedance.msdk.api.p.dq.kk.p m;
    private boolean ox;
    private com.bytedance.msdk.api.p.dq.kk.d pa;

    public no(Context context, String str) {
        super(context, str, 3);
        this.f807d = false;
        this.ox = false;
        this.dq = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.no noVar, com.bytedance.msdk.api.p.dq.kk.ox oxVar) {
        dq(dVar, noVar, oxVar, kk());
    }

    private void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.no noVar, com.bytedance.msdk.api.p.dq.kk.ox oxVar, int i) {
        if (ig()) {
            this.no = dVar;
            this.ha = noVar;
            this.er = oxVar;
            if (i != -1 && i != 0) {
                this.i.put("ad_load_timeout", Integer.valueOf(i));
                this.no.ia(i);
            }
            this.t = this;
            ia();
        }
    }

    private void dq(com.bytedance.msdk.d.s sVar, ViewGroup viewGroup) {
        this.yy = sVar;
        if (this.ox) {
            sVar.bl();
        }
        com.bytedance.msdk.api.p.dq.d dVar = this.ws;
        if (dVar != null) {
            this.yy.dq(dVar);
        }
        this.yy.iw(true);
        this.yy.dq(this.t);
        if (this.yy.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, this.yy.b(), i())) {
            com.bytedance.msdk.d.s sVar2 = this.yy;
            dq(sVar2, sVar2.b());
        }
        com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.msdk.dq.s.s.dq(this.kk, "show"));
        sb.append("展示的广告类型：");
        sb.append(com.bytedance.msdk.d.dq.dq(this.yy.hf()));
        sb.append(",slotId：");
        tn.a(this.yy, sb, ",slotType:");
        sb.append(this.yy.y());
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
        mp.dq().d(this.kk);
        ig.dq().d(this.kk, this.yy.b());
        this.yy.dq(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(ViewGroup viewGroup) {
        boolean z;
        boolean z2;
        List<com.bytedance.msdk.core.s.d.ig> dq;
        com.bytedance.msdk.d.s sVar;
        com.bytedance.msdk.core.no.d dVar = this.mn;
        List<com.bytedance.msdk.core.no.no> list = null;
        com.bytedance.msdk.s.iw.dq(this.no, dVar != null ? dVar.gx() : null);
        if (this.uh) {
            com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.no, 0);
            s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            return;
        }
        int d2 = p.d(this.kk);
        if (d2 != 0) {
            com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.no, d2);
            s(new com.bytedance.msdk.api.dq(d2, com.bytedance.msdk.api.dq.dq(d2)));
            return;
        }
        List<com.bytedance.msdk.d.s> l = l();
        if (viewGroup == null) {
            com.bytedance.msdk.s.iw.dq(l, this.no, 0);
            s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            return;
        }
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (list != null && list.size() > 0) {
            HashMap<String, com.bytedance.msdk.d.s> iw = iw(l);
            for (com.bytedance.msdk.core.no.no noVar : list) {
                if (noVar != null) {
                    String cd = noVar.cd();
                    com.bytedance.msdk.d.s sVar2 = iw.get(cd);
                    if (sVar2 != null && sVar2.u(this.kk) && !sVar2.xi()) {
                        dq(sVar2, viewGroup);
                    } else if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, false) == 3 && (dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, i())) != null && dq.size() > 0 && (sVar = dq.get(0).dq) != null && sVar.u(this.kk) && !sVar.xi()) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk, "show") + "adSlotId：" + sVar.b() + "，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.kk));
                        p(sVar);
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
        if (!z && l != null && l.size() > 0) {
            Iterator<com.bytedance.msdk.d.s> it = l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.bytedance.msdk.d.s next = it.next();
                if (next != null && next.u(this.kk) && !next.xi()) {
                    dq(next, viewGroup);
                    z2 = true;
                    break;
                }
            }
        }
        if (!z2) {
            com.bytedance.msdk.s.iw.dq(l, this.no, 0);
            s(new com.bytedance.msdk.api.dq(40052, com.bytedance.msdk.api.dq.dq(40052)));
            return;
        }
        this.uh = true;
        if (this.yy != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.yy);
            d(arrayList);
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, false, 0);
    }

    private void s(final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.no.3
            @Override // java.lang.Runnable
            public void run() {
                if (no.this.pa != null) {
                    no.this.pa.d_(dqVar);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void A_() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.m;
        if (pVar != null) {
            pVar.ox();
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void F_() {
        com.bytedance.msdk.api.p.dq.kk.s sVar = this.io;
        if (sVar != null) {
            sVar.dq();
        }
    }

    public void cd() {
        this.ox = true;
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void d() {
        if (this.yy == null) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(l(), this.kk, this.no, i(), this.yy);
        }
        super.d();
        this.dq = null;
        this.pa = null;
        this.er = null;
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void d(int i) {
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.pa;
        if (dVar != null) {
            dVar.d(i);
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.l.get(), this.kk, i());
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void d_(com.bytedance.msdk.api.dq dqVar) {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, dqVar, 1, 0, str, j);
        s(dqVar);
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void dq(int i) {
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.pa;
        if (dVar != null) {
            dVar.dq(1);
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.l.get(), this.kk, i());
    }

    public void dq(final ViewGroup viewGroup) {
        d((com.bytedance.msdk.d.s) null);
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.no.2
            @Override // java.lang.Runnable
            public void run() {
                no.this.ox(viewGroup);
            }
        });
    }

    public void dq(final com.bytedance.msdk.api.dq.d dVar, final com.bytedance.msdk.api.p.no noVar, final com.bytedance.msdk.api.p.dq.kk.ox oxVar) {
        if (noVar != null && noVar.dq() == 1 && !TextUtils.isEmpty(noVar.ox()) && !TextUtils.isEmpty(com.bytedance.msdk.iw.d.dq.s()) && !noVar.ox().equals(com.bytedance.msdk.iw.d.dq.s())) {
            if (oxVar != null) {
                oxVar.dq(new com.bytedance.msdk.api.dq(840028, com.bytedance.msdk.api.dq.dq(840028)));
            }
        } else {
            if (!com.bytedance.msdk.core.dq.d().dq(j(), 3) && oxVar != null) {
                oxVar.dq(new com.bytedance.msdk.api.dq(840031, com.bytedance.msdk.api.dq.dq(840031)));
                return;
            }
            if (!com.bytedance.msdk.core.dq.d().cd()) {
                if (oxVar != null) {
                    oxVar.dq(new com.bytedance.msdk.api.dq(840034, com.bytedance.msdk.api.dq.dq(840034)));
                }
            } else {
                ox(dVar.fw());
                if (com.bytedance.msdk.core.dq.d().ji()) {
                    com.bytedance.msdk.api.p.o.dq(new f() { // from class: com.bytedance.msdk.core.admanager.no.1
                        @Override // com.bytedance.msdk.api.p.f
                        public void dq() {
                            no.this.d(dVar, noVar, oxVar);
                        }
                    });
                } else {
                    d(dVar, noVar, oxVar);
                }
            }
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.api.p.dq.kk.ox oxVar = this.er;
        if (oxVar != null) {
            oxVar.dq(dqVar);
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.d dVar) {
        this.pa = dVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.p pVar) {
        this.m = pVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.s sVar) {
        this.io = sVar;
    }

    public View f() {
        if (this.dq == null) {
            return null;
        }
        if (this.ce == null) {
            FrameLayout frameLayout = new FrameLayout(this.dq);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            ox(frameLayout);
            this.ce = frameLayout;
        }
        return this.ce;
    }

    public void fw() {
        if (this.yy.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, this.yy.b(), i())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.yy.b(), this.no, this.i, true, this.ha, this.f963e, this.l.get());
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public Activity getActivity() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.m;
        if (pVar != null) {
            return pVar.getActivity();
        }
        return null;
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void iw() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.m;
        if (pVar != null) {
            pVar.p();
        }
    }

    public boolean jy() {
        List<com.bytedance.msdk.core.no.no> list;
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return jy.dq(this.r, this.gh, this.cd, this.no, this.uh, this.s, j(), i(), list, dVar != null ? dVar.gx() : null);
    }

    public int kk() {
        return ((Integer) this.i.get("ad_load_timeout")).intValue();
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void mn() {
        String str;
        long j;
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.pa;
        if (dVar != null) {
            dVar.mn();
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str2 = str;
        long j2 = j;
        com.bytedance.msdk.core.d.dq.s(this.no.k());
        com.bytedance.msdk.d.s sVar = this.yy;
        com.bytedance.msdk.s.iw.d(sVar, this.no, 0, str2, j2, sVar.by());
    }

    public View mp() {
        return null;
    }

    public View no() {
        return null;
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
        com.bytedance.msdk.api.p.dq.kk.ox oxVar = this.er;
        if (oxVar != null) {
            oxVar.dq();
        }
    }

    public void ox(int i) {
        this.i.put("ad_load_timeout", Integer.valueOf(i));
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
    }

    public int[] q() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            return sVar.ji();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.kk.d
    public void w_() {
        String str;
        long j;
        com.bytedance.msdk.api.p.dq.kk.d dVar = this.pa;
        if (dVar != null) {
            dVar.w_();
        }
        mp.dq().mn(this.kk);
        if (this.yy != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.msdk.dq.s.s.dq(this.kk, "show_listen"));
            sb.append("adSlotId：");
            tn.a(this.yy, sb, "，广告类型：");
            sb.append(com.bytedance.msdk.d.dq.dq(this.yy.hf()));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
            com.bytedance.msdk.core.kk.no.dq().d(this.kk, this.yy.b());
        }
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            com.bytedance.msdk.core.ox.ox.dq(sVar.wi(), this.kk, this.yy.b());
        }
        fw();
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.yy)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        com.bytedance.msdk.s.iw.dq(this.yy, this.no, 0, str, j, false);
        com.bytedance.msdk.core.d.dq.mn(this.no.k());
        com.bytedance.msdk.core.d.dq.ox(this.no.k());
        com.bytedance.msdk.core.o.p.dq(1, this.no.k(), this.yy.qz(), this.yy.dk());
        com.bytedance.msdk.core.mn.mn.dq(this.kk, this.yy);
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void x_() {
        com.bytedance.msdk.api.p.dq.kk.s sVar = this.io;
        if (sVar != null) {
            sVar.d();
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void y_() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.m;
        if (pVar != null) {
            pVar.dq();
        }
    }

    @Override // com.bytedance.msdk.dq.d.s
    public void z_() {
        com.bytedance.msdk.api.p.dq.kk.p pVar = this.m;
        if (pVar != null) {
            pVar.d();
        }
    }
}
