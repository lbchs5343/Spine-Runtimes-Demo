package com.bytedance.msdk.core.ig;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.p.dq.d;
import com.bytedance.msdk.api.p.dq.mn.kk;
import com.bytedance.msdk.api.p.dq.mn.mn;
import com.bytedance.msdk.api.p.dq.mn.o;
import com.bytedance.msdk.api.p.dq.mn.ox;
import com.bytedance.msdk.api.p.dq.mn.p;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.kk.no;
import com.bytedance.msdk.d.s;
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
public class dq implements d, com.bytedance.msdk.api.p.dq.mn.dq, kk {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.dq.d f934d;
    private s dq;
    private d ia;
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq iw;
    private boolean mn = false;
    private ox ox;
    private InterfaceC0057dq p;
    private kk s;

    /* renamed from: com.bytedance.msdk.core.ig.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0057dq {
        void dq();

        void dq(com.bytedance.msdk.api.p.dq.mn.dq dqVar);
    }

    public dq(s sVar, com.bytedance.msdk.api.dq.d dVar, InterfaceC0057dq interfaceC0057dq) {
        this.dq = sVar;
        this.f934d = dVar;
        this.p = interfaceC0057dq;
        if (sVar == null || sVar.cv() != 3) {
            return;
        }
        sVar.mn(true);
    }

    private void cv() {
        if (this.dq.mc()) {
            this.dq.dq((com.bytedance.msdk.api.p.dq.ox.d) new com.bytedance.msdk.api.p.dq.ox.s() { // from class: com.bytedance.msdk.core.ig.dq.2
                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq() {
                    dq.this.dq((View) null);
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.s
                public void dq(float f2, float f3) {
                    dq.this.dq(f2, f3);
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq(View view) {
                    dq.this.d(view);
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.s
                public void dq(View view, String str, int i) {
                    dq.this.dq(view, str, i);
                }
            });
        } else {
            this.dq.dq(new com.bytedance.msdk.api.p.dq.ox.d() { // from class: com.bytedance.msdk.core.ig.dq.3
                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq() {
                    dq.this.dq((View) null);
                }

                @Override // com.bytedance.msdk.api.p.dq.ox.d
                public void dq(View view) {
                    dq.this.d(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(View view) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(view);
        }
        jw();
    }

    private void dc() {
        if (this.dq.mc()) {
            this.dq.dq((ox) new mn() { // from class: com.bytedance.msdk.core.ig.dq.4
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    dq.this.dq((View) null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(float f2, float f3) {
                    dq.this.dq(f2, f3);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    dq.this.d(view);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(View view, String str, int i) {
                    dq.this.dq(view, str, i);
                }
            });
        } else {
            this.dq.dq((ox) new p() { // from class: com.bytedance.msdk.core.ig.dq.5
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    dq.this.dq((View) null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    dq.this.d(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(float f2, float f3) {
        ox oxVar = this.ox;
        if (oxVar instanceof mn) {
            ((mn) oxVar).dq(f2, f3);
        }
    }

    private void dq(Handler.Callback callback) {
        iw.dq(this.f934d, jy.dq(this.dq));
        if (this.dq == null) {
            iw.dq((List<s>) null, this.f934d, 0);
            return;
        }
        vw();
        if (callback != null) {
            callback.handleMessage(null);
        }
        InterfaceC0057dq interfaceC0057dq = this.p;
        if (interfaceC0057dq != null) {
            interfaceC0057dq.dq();
        }
        dq(this.dq);
        s sVar = this.dq;
        iw.dq(sVar, this.f934d, sVar.t(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(View view) {
        String str;
        long j;
        this.mn = true;
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq();
        }
        if (this.f934d != null && this.dq != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.msdk.dq.s.s.dq(this.f934d.k(), "show_listen"));
            sb.append("adSlotId：");
            tn.a(this.dq, sb, "，广告类型：");
            sb.append(com.bytedance.msdk.d.dq.dq(this.dq.hf()));
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
            mp.dq().mn(this.f934d.k());
            mp.dq().d(this.f934d.k());
            no.dq().d(this.f934d.k(), this.dq.b());
            ig.dq().d(this.f934d.k(), this.dq.b());
            com.bytedance.msdk.core.ox.ox.dq(this.dq.wi(), this.f934d.k(), this.dq.b());
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
            com.bytedance.msdk.core.d.dq.mn(this.f934d.k());
            com.bytedance.msdk.core.d.dq.ox(this.f934d.k());
            com.bytedance.msdk.core.o.p.dq(1, this.f934d.k(), this.dq.qz(), this.dq.dk());
        }
        iw.dq(this.dq, this.f934d, 0, str2, j2, gx);
        com.bytedance.msdk.api.dq.d dVar = this.f934d;
        com.bytedance.msdk.core.mn.mn.dq(dVar != null ? dVar.k() : "", this.dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(View view, String str, int i) {
        ox oxVar = this.ox;
        if (oxVar instanceof mn) {
            ((mn) oxVar).dq(view, str, i);
        }
    }

    private void ha() {
        this.dq.dq((com.bytedance.msdk.dq.d.iw) new com.bytedance.msdk.dq.d.dq() { // from class: com.bytedance.msdk.core.ig.dq.1
            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void C_() {
                if (dq.this.iw != null) {
                    dq.this.iw.dq(0, "banner ad closed", false);
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void a_(com.bytedance.msdk.api.dq dqVar) {
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void d(View view) {
                dq.this.dq(view);
            }

            @Override // com.bytedance.msdk.api.p.dq.dq.dq
            public void dq(View view) {
                dq.this.d(view);
            }
        });
    }

    private void jw() {
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
        String str2 = str;
        long j2 = j;
        com.bytedance.msdk.core.d.dq.s(this.f934d.k());
        s sVar = this.dq;
        iw.d(sVar, this.f934d, 0, str2, j2, sVar.by());
    }

    private void vw() {
        int cv = this.dq.cv();
        if (cv != 4) {
            if (cv == 5) {
                cv();
                return;
            } else if (cv == 3) {
                ha();
                return;
            }
        }
        dc();
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int bl() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.ox();
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

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void c() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.jy();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public com.bytedance.msdk.api.ox cd() {
        if (this.dq == null || !this.mn || cd.dq()) {
            return null;
        }
        return jy.dq(this.f934d, this.dq, true);
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void ce() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.f();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d
    public void d(long j, long j2, String str, String str2) {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.d(j, j2, str, str2);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void d(Activity activity) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.d(activity);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void d(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.s(z);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public boolean d() {
        com.bytedance.msdk.api.dq.d dVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.dq);
        iw.dq(arrayList, (List<s>) null, (List<s>) null, this.f934d, jy.dq(this.dq), 0);
        s sVar = this.dq;
        if (sVar == null || (dVar = this.f934d) == null) {
            return false;
        }
        return sVar.u(dVar.k());
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

    @Override // com.bytedance.msdk.api.p.dq.d
    public void dq() {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq();
        }
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

    @Override // com.bytedance.msdk.api.p.dq.d
    public void dq(long j, long j2, int i, int i2, String str, String str2) {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq(j, j2, i, i2, str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d
    public void dq(long j, long j2, String str, String str2) {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq(j, j2, str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d
    public void dq(long j, String str, String str2) {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq(j, str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final com.bytedance.msdk.api.p.dq.mn.no noVar) {
        dq(new Handler.Callback() { // from class: com.bytedance.msdk.core.ig.dq.7
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                dq.this.dq.dq(activity, viewGroup, list, list2, list3, noVar, null);
                return false;
            }
        });
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.iw = dqVar;
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

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final List<View> list4, final View view) {
        dq(new Handler.Callback() { // from class: com.bytedance.msdk.core.ig.dq.6
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (TextUtils.equals(dq.this.ds(), MediationConstant.ADN_PANGLE)) {
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
        iw.dq(this.dq, this.f934d, (com.bytedance.msdk.api.dq) null, 2, 0, str, j);
        kk kkVar = this.s;
        if (kkVar != null) {
            kkVar.dq(dqVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(d dVar) {
        this.ia = dVar;
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq((d) this);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(kk kkVar) {
        this.s = kkVar;
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq((kk) this);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(o oVar) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(oVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(ox oxVar) {
        this.ox = oxVar;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void dq(com.bytedance.msdk.api.p.dq.p pVar) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(pVar);
        }
    }

    public void dq(s sVar) {
        if (com.bytedance.msdk.core.dq.d().op()) {
            iw.dq(sVar, this.f934d, r.dq(Thread.currentThread().getStackTrace()), 2);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(dVar);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(String str) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(str);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d
    public void dq(String str, String str2) {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq(str, str2);
        }
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(z);
        }
    }

    public String ds() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.m();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int e() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.yo();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void er() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.fw();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String f() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.tu();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String fw() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public com.bytedance.msdk.api.ox gh() {
        if (this.dq != null && com.bytedance.msdk.core.dq.d().wp()) {
            return jy.dq(this.f934d, this.dq, false);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public Map<String, Object> gx() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.bu();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public Map<String, Object> h() {
        s sVar = this.dq;
        Map<String, Object> dq = sVar != null ? sVar.dq() : null;
        if (dq == null) {
            com.bytedance.msdk.api.dq.d dVar = this.f934d;
            dq = com.bytedance.msdk.core.mn.s.iw(dVar != null ? dVar.k() : "");
        }
        if (this.mn && cd.dq()) {
            String dq2 = cd.dq(jy.dq(this.f934d, this.dq, true));
            if (!TextUtils.isEmpty(dq2)) {
                dq.put("get_show_ecpm_info", dq2);
            }
        }
        return dq;
    }

    @Override // com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.mp i() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.i();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int ia() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.bn();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public View ig() {
        iw.dq(this.f934d, jy.dq(this.dq));
        s sVar = this.dq;
        if (sVar == null || !sVar.mc()) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.dq);
            iw.dq(arrayList, this.f934d, 0);
            return null;
        }
        InterfaceC0057dq interfaceC0057dq = this.p;
        if (interfaceC0057dq != null) {
            interfaceC0057dq.dq();
        }
        s sVar2 = this.dq;
        iw.dq(sVar2, this.f934d, sVar2.t(), 0);
        return this.dq.ig();
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public boolean ir() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.mc();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String iw() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.rp();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void j() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.ce();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int ji() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.d();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public List<String> jy() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.fp();
        }
        return null;
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

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int kx() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.jo();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String l() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.mp();
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.ox
    public Bitmap le() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.le();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String mn() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.fq();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public View mp() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.gh();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public boolean n() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.ah();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void nh() {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.er();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String no() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.ux();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int o() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.oh();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public com.bytedance.msdk.api.p.dq.mn.d ob() {
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

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void op() {
        if (this.dq != null) {
            vw();
            this.dq.no();
            dq(this.dq);
            if (this.dq.cv() == 3) {
                dq(-1.0f, -2.0f);
            }
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public s ox() {
        return this.dq;
    }

    public void ox(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.iw(z);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String p() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.lk();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public double q() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.gl();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.d.ox
    public double r() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.r();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public String s() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.py();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public com.bytedance.msdk.api.p.dq.mn.iw t() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.q();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public boolean u() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.o();
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

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public void vf() {
        s sVar = this.dq;
        if (sVar != null) {
            try {
                sVar.p();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.mn.dq
    public int wn() {
        s sVar = this.dq;
        if (sVar != null) {
            return sVar.cd();
        }
        return -1;
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
