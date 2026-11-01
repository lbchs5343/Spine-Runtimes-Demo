package com.bytedance.msdk.core.ia;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.dq.d;
import com.bytedance.msdk.api.p.dq.mn.kk;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.kk.no;
import com.bytedance.msdk.core.mn.mn;
import com.bytedance.msdk.core.o.p;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.ia.cd;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.r;
import com.bytedance.msdk.s.iw;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.tn;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq implements kk, com.bytedance.msdk.api.p.dq.ox.dq {

    /* renamed from: d, reason: collision with root package name */
    private d f930d;
    private s dq;
    private boolean iw = false;
    private com.bytedance.msdk.api.p.dq.ox.d ox;
    private InterfaceC0056dq p;
    private kk s;

    /* renamed from: com.bytedance.msdk.core.ia.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0056dq {
        void dq();

        void dq(com.bytedance.msdk.api.p.dq.ox.dq dqVar);
    }

    public dq(s sVar, d dVar, InterfaceC0056dq interfaceC0056dq) {
        this.dq = sVar;
        this.f930d = dVar;
        this.p = interfaceC0056dq;
    }

    private void dq(Handler.Callback callback) {
        iw.dq(this.f930d, jy.dq(this.dq));
        if (this.dq == null) {
            iw.dq((List<s>) null, this.f930d, 0);
            return;
        }
        ob();
        if (callback != null) {
            callback.handleMessage(null);
        }
        InterfaceC0056dq interfaceC0056dq = this.p;
        if (interfaceC0056dq != null) {
            interfaceC0056dq.dq();
        }
        dq(this.dq);
        s sVar = this.dq;
        iw.dq(sVar, this.f930d, sVar.t(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(View view) {
        String str;
        long j;
        com.bytedance.msdk.api.p.dq.ox.d dVar = this.ox;
        if (dVar != null) {
            dVar.dq(view);
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.dq)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str2 = str;
        long j2 = j;
        com.bytedance.msdk.core.d.dq.s(this.f930d.k());
        s sVar = this.dq;
        iw.d(sVar, this.f930d, 0, str2, j2, sVar.by());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        String str;
        long j;
        this.iw = true;
        com.bytedance.msdk.api.p.dq.ox.d dVar = this.ox;
        if (dVar != null) {
            dVar.dq();
        }
        if (this.f930d != null && this.dq != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.msdk.dq.s.s.dq(this.f930d.k(), "show_listen"));
            sb.append("adSlotId：");
            tn.a(this.dq, sb, "，广告类型：");
            sb.append(com.bytedance.msdk.d.dq.dq(this.dq.hf()));
            ox.dq("TTMediationSDK", sb.toString());
            mp.dq().mn(this.f930d.k());
            mp.dq().d(this.f930d.k());
            no.dq().d(this.f930d.k(), this.dq.b());
            ig.dq().d(this.f930d.k(), this.dq.b());
            com.bytedance.msdk.core.ox.ox.dq(this.dq.wi(), this.f930d.k(), this.dq.b());
        }
        this.p.dq(this);
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.dq)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        String str2 = str;
        long j2 = j;
        boolean gx = this.dq.gx();
        if (!gx) {
            com.bytedance.msdk.core.d.dq.mn(this.f930d.k());
            com.bytedance.msdk.core.d.dq.ox(this.f930d.k());
            p.dq(1, this.f930d.k(), this.dq.qz(), this.dq.dk());
        }
        iw.dq(this.dq, this.f930d, 0, str2, j2, gx);
        d dVar2 = this.f930d;
        mn.dq(dVar2 != null ? dVar2.k() : "", this.dq);
    }

    private void ob() {
        if (this.dq.mc()) {
            this.dq.dq((com.bytedance.msdk.api.p.dq.ox.d) new com.bytedance.msdk.api.p.dq.ox.s() { // from class: com.bytedance.msdk.core.ia.dq.2
                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq() {
                    dq.this.l();
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.s
                public void dq(float f2, float f3) {
                    if (dq.this.ox instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                        ((com.bytedance.msdk.api.p.dq.ox.s) dq.this.ox).dq(f2, f3);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq(View view) {
                    dq.this.dq(view);
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.s
                public void dq(View view, String str, int i) {
                    if (dq.this.ox instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                        ((com.bytedance.msdk.api.p.dq.ox.s) dq.this.ox).dq(view, str, i);
                    }
                }
            });
        } else {
            this.dq.dq(new com.bytedance.msdk.api.p.dq.ox.d() { // from class: com.bytedance.msdk.core.ia.dq.3
                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq() {
                    dq.this.l();
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq(View view) {
                    dq.this.dq(view);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public int bl() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.d();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void by() {
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.by();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public boolean c() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.o();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String cd() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void ce() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.ce();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public com.bytedance.msdk.api.p.dq.ox.p d() {
        s sVar = this.dq;
        final com.bytedance.msdk.api.p.dq.mn.iw q = sVar != null ? sVar.q() : null;
        if (q == null) {
            return null;
        }
        return new com.bytedance.msdk.api.p.dq.ox.p() { // from class: com.bytedance.msdk.core.ia.dq.1
            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void d() {
                q.d();
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void d(long j) {
                q.d(j);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void dq() {
                q.dq();
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void dq(int i, int i2) {
                q.dq(i, i2);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void dq(long j) {
                q.dq(j);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void dq(long j, int i, int i2) {
                q.dq(j, i, i2);
            }

            @Override // com.bytedance.msdk.api.p.dq.mn.iw
            public void ox(long j) {
                q.ox(j);
            }
        };
    }

    @Override // com.bytedance.msdk.d.ox
    public void d(Activity activity) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.d(activity);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void d(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.s(z);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public ia dq(Activity activity) {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.ox
    public ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.dq(tTDislikeDialogAbstract);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String dq() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.mp();
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(int i) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(i);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void dq(long j, long j2) {
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.dq(j, j2);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void dq(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final com.bytedance.msdk.api.p.dq.mn.no noVar) {
        dq(new Handler.Callback() { // from class: com.bytedance.msdk.core.ia.dq.5
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                dq.this.dq.dq(activity, viewGroup, list, list2, list3, noVar, null);
                return false;
            }
        });
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(activity, dqVar);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(Dialog dialog) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(dialog);
        }
    }

    @Override // com.bytedance.msdk.d.d
    public void dq(Bitmap bitmap, int i) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(bitmap, i);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void dq(final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final List<View> list4, final View view) {
        dq(new Handler.Callback() { // from class: com.bytedance.msdk.core.ia.dq.4
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (TextUtils.equals(dq.this.vf(), MediationConstant.ADN_PANGLE)) {
                    dq.this.dq.dq(viewGroup, list, list2, list3, list4, view);
                    return false;
                }
                dq.this.dq.dq(null, viewGroup, list2, list3, list4, null, list);
                return false;
            }
        });
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        String str;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (r.dq(this.dq)) {
            str = tn.i();
            j = System.currentTimeMillis() - currentTimeMillis;
        } else {
            str = null;
            j = -1;
        }
        iw.dq(this.dq, this.f930d, (com.bytedance.msdk.api.dq) null, 2, 0, str, j);
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void dq(kk kkVar) {
        this.s = kkVar;
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq((kk) this);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void dq(com.bytedance.msdk.api.p.dq.ox.d dVar) {
        this.ox = dVar;
    }

    public void dq(s sVar) {
        if (com.bytedance.msdk.core.dq.d().op()) {
            iw.dq(sVar, this.f930d, r.dq(Thread.currentThread().getStackTrace()), 2);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(dVar);
        }
    }

    @Override // com.bytedance.msdk.d.d
    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(String str) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(str);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(z);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public com.bytedance.msdk.api.ox e() {
        if (this.dq != null && com.bytedance.msdk.core.dq.d().wp()) {
            return jy.dq(this.f930d, this.dq, false);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void er() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.er();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public List<String> f() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.fp();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String fw() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.tu();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public com.bytedance.msdk.api.ox gh() {
        if (this.dq == null || !this.iw || cd.dq()) {
            return null;
        }
        return jy.dq(this.f930d, this.dq, true);
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public int h() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.jo();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.mp i() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.i();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String ia() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.fq();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String ig() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.ux();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void ir() {
        if (this.dq != null) {
            ob();
            this.dq.no();
            dq(this.dq);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String iw() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.py();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public com.bytedance.msdk.api.p.dq.mn.d j() {
        s sVar = this.dq;
        if (sVar == null || !sVar.tl()) {
            return null;
        }
        com.bytedance.msdk.api.p.dq.mn.d dVar = new com.bytedance.msdk.api.p.dq.mn.d();
        dVar.ox(this.dq.xj());
        dVar.p(this.dq.bf());
        dVar.dq(this.dq.x());
        dVar.s(this.dq.bx());
        dVar.iw(this.dq.nt());
        dVar.mn(this.dq.tv());
        dVar.dq(this.dq.ny());
        dVar.d(this.dq.a());
        dVar.d(this.dq.fd());
        dVar.dq(this.dq.jw());
        return dVar;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public Map<String, Object> ji() {
        s sVar = this.dq;
        Map<String, Object> dq = sVar != null ? sVar.dq() : null;
        if (dq == null) {
            d dVar = this.f930d;
            dq = com.bytedance.msdk.core.mn.s.iw(dVar != null ? dVar.k() : "");
        }
        if (this.iw && cd.dq()) {
            String dq2 = cd.dq(jy.dq(this.f930d, this.dq, true));
            if (!TextUtils.isEmpty(dq2)) {
                dq.put("get_show_ecpm_info", dq2);
            }
        }
        return dq;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public double jy() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.gl();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.d.ox
    public int k() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.k();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public int kx() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.yo();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.d.ox
    public Bitmap le() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.le();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String mn() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.rp();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public View mp() {
        iw.dq(this.f930d, jy.dq(this.dq));
        s sVar = this.dq;
        if (sVar == null || !sVar.mc()) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.dq);
            iw.dq(arrayList, this.f930d, 0);
            return null;
        }
        InterfaceC0056dq interfaceC0056dq = this.p;
        if (interfaceC0056dq != null) {
            interfaceC0056dq.dq();
        }
        s sVar2 = this.dq;
        iw.dq(sVar2, this.f930d, sVar2.t(), 0);
        return this.dq.ig();
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public int n() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.ox();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public Map<String, Object> nh() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.bu();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public int no() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.oh();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public int o() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.bn();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public boolean op() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.ah();
        }
        return false;
    }

    public void ox(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.iw(z);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public boolean ox() {
        d dVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.dq);
        iw.dq(arrayList, (List<s>) null, (List<s>) null, this.f930d, jy.dq(this.dq), 0);
        s sVar = this.dq;
        if (sVar == null || (dVar = this.f930d) == null) {
            return false;
        }
        return sVar.u(dVar.k());
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public s p() {
        return this.dq;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public View q() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.gh();
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.ox
    public double r() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.r();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public String s() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.lk();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public boolean u() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.mc();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void uh() {
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.uh();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void v() {
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.v();
        }
    }

    public String vf() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.m();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.ox.dq
    public void wn() {
        s sVar = this.dq;
        if (sVar != null) {
            try {
                sVar.p();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.s wp() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.wp();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void xz() {
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.xz();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.kk
    public void yy() {
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.yy();
        }
    }
}
