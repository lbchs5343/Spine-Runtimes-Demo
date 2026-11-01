package com.bytedance.sdk.openadsdk.core.component.reward.d;

import android.graphics.Color;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.p.kk;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.ig;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.uh;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private j f2552d;
    private final TTBaseVideoActivity dq;
    private s ia;
    private com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox ig;
    private int iw;
    private boolean jy;
    private com.bytedance.sdk.openadsdk.core.component.reward.d.dq kk;
    private boolean le;
    private AbstractEndCardFrameLayout mn;
    private final com.bytedance.sdk.openadsdk.core.component.reward.view.dq mp;
    private com.bytedance.sdk.openadsdk.core.component.reward.endcard.d no;
    private com.bytedance.sdk.openadsdk.core.d.d o;
    private String ox;
    private boolean p;
    private com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq q;
    private int s;

    /* renamed from: f, reason: collision with root package name */
    private int f2553f = -1;
    private boolean fw = false;
    private final AtomicBoolean cd = new AtomicBoolean(false);
    private final AtomicBoolean gh = new AtomicBoolean(false);
    private int i = 0;
    private boolean r = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.reward.d.d$d, reason: collision with other inner class name */
    public interface InterfaceC0143d {
        void d();

        void dq();

        s ox();
    }

    public interface dq {
        void dq();
    }

    public d(TTBaseVideoActivity tTBaseVideoActivity) {
        this.dq = tTBaseVideoActivity;
        this.mp = new com.bytedance.sdk.openadsdk.core.component.reward.view.dq(tTBaseVideoActivity);
    }

    private int dq(j jVar) {
        if (jVar == null) {
            return 0;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.endcard.d) {
            return jVar.aa();
        }
        if (dqVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox) {
            return i.o(jVar);
        }
        return 0;
    }

    private void dq(long j) {
        int i = this.f2553f / 1000;
        if (!uh.fw(this.f2552d)) {
            if (i > 0) {
                this.ia.dq(false, i + "s", null, false, false);
            } else {
                this.ia.dq(false, null, null, true, true);
            }
        }
        if (i > 0) {
            this.f2553f = (int) (this.f2553f - j);
            this.dq.dq(j);
        }
    }

    private void gx() {
        try {
            if (!h.dq(this.f2552d) || this.le) {
                return;
            }
            float[] dq2 = com.bytedance.sdk.openadsdk.core.component.reward.s.d.dq(this.dq.getApplicationContext(), this.f2552d.es(), this.f2552d.ho());
            float f2 = dq2[0];
            float f3 = dq2[1];
            if (this.f2552d.es() == 100.0f) {
                this.s = (int) f2;
                this.iw = (int) f3;
                return;
            }
            int[] dq3 = com.bytedance.sdk.openadsdk.core.component.reward.s.d.dq(this.dq.getApplicationContext(), this.f2552d.es(), this.f2552d.pn(), this.f2552d.ho());
            int i = dq3[0];
            int i2 = dq3[1];
            int i3 = dq3[2];
            int i4 = dq3[3];
            float f4 = i;
            float f5 = i3;
            this.s = (int) ((f2 - f4) - f5);
            float f6 = i2;
            float f7 = i4;
            this.iw = (int) ((f3 - f6) - f7);
            this.dq.getWindow().getDecorView().setPadding(ce.ox(this.dq, f4), ce.ox(this.dq, f6), ce.ox(this.dq, f5), ce.ox(this.dq, f7));
        } catch (Throwable unused) {
        }
    }

    private boolean l() {
        return i.ox(this.f2552d) && !l.ig(this.f2552d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (this.dq.isDestroyed()) {
            return;
        }
        Toast toast = new Toast(this.dq);
        toast.setDuration(1);
        toast.setGravity(17, 0, 0);
        LinearLayout linearLayout = new LinearLayout(this.dq);
        linearLayout.setBackgroundColor(Color.parseColor("#CC161823"));
        linearLayout.setOrientation(1);
        linearLayout.setPadding(ce.ox(this.dq, 20.0f), ce.ox(this.dq, 12.0f), ce.ox(this.dq, 20.0f), ce.ox(this.dq, 12.0f));
        TextView textView = new TextView(this.dq);
        textView.setTextColor(-1);
        textView.setText("请求异常无法发放奖励，请关闭重试");
        textView.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        toast.show();
        this.dq.er().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.5
            @Override // java.lang.Runnable
            public void run() {
                d.this.t();
            }
        }, 6000L);
    }

    public c bl() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            return oxVar.ir();
        }
        return null;
    }

    public void c() {
        dq(1000L);
    }

    public boolean cd() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            return dqVar.ox();
        }
        return false;
    }

    public boolean ce() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            return oxVar.u();
        }
        return false;
    }

    public void d() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.ig();
        }
    }

    public void d(int i, int i2) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.d(i, i2);
        }
    }

    public void d(boolean z) {
        if (this.f2553f >= 0) {
            this.dq.f();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.p(z);
        }
    }

    public void dq() {
        if (this.ig != null && (!ig.dq(this.f2552d) || !l.k(this.f2552d))) {
            this.ig.ji();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar != null) {
            dVar.ji();
        }
    }

    public void dq(int i, int i2) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.dq(i, i2);
        }
    }

    public void dq(long j, long j2, int i) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.dq(j, j2, i);
        }
    }

    public void dq(q qVar) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar == null) {
            return;
        }
        dVar.dq(qVar);
    }

    public void dq(s sVar, com.bytedance.sdk.openadsdk.core.component.reward.d.dq dqVar, boolean z, String str, int i, int i2) {
        this.p = z;
        this.ia = sVar;
        this.kk = dqVar;
        this.ox = str;
        this.s = i;
        this.iw = i2;
    }

    public void dq(AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        if (this.f2552d.cd() == 1) {
            return;
        }
        if (i.ox(this.f2552d)) {
            this.ig = new com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox(this.dq, this.f2552d, this.ox, this.s, this.iw, this.p, this.mn);
        }
        if (!TextUtils.isEmpty(pa.dq(this.f2552d))) {
            this.no = new com.bytedance.sdk.openadsdk.core.component.reward.endcard.d(this.dq, this.f2552d, this.ox, this.s, this.iw, this.p, this.mn);
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.ig;
        if (dqVar == null) {
            dqVar = this.no;
        }
        this.q = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar) {
        Map<String, Object> ob = this.dq.ob();
        this.mp.dq(this.o);
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.dq(dqVar);
            this.ig.dq(this.p, ob, this.ia.p());
            this.ig.dq(this.kk.mn(), this.o);
            this.ig.dq(new dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.1
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.dq
                public void dq() {
                    d.this.s(false);
                }
            });
            this.ig.dq(new InterfaceC0143d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.2
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.InterfaceC0143d
                public void d() {
                    d.this.dq.mp();
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.InterfaceC0143d
                public void dq() {
                    d.this.dq.d(true, true);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.InterfaceC0143d
                public s ox() {
                    return d.this.ia;
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar != null) {
            dVar.dq(this.p, ob, this.ia.p());
            this.no.dq(this.kk.mn(), this.o);
        }
    }

    public void dq(j jVar, com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.f2552d = jVar;
        this.o = dVar;
        this.mp.dq(jVar);
        this.mp.dq(this.o);
        if (i.ox(jVar)) {
            if (this.ig == null) {
                this.ig = new com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox(this.dq, jVar, this.ox, this.s, this.iw, this.p, this.mn);
            }
            com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
            this.q = oxVar;
            oxVar.dq(new dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.6
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.dq
                public void dq() {
                    d.this.s(false);
                }
            });
            this.ig.dq(new InterfaceC0143d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.7
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.InterfaceC0143d
                public void d() {
                    d.this.dq.mp();
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.InterfaceC0143d
                public void dq() {
                    d.this.dq.d(true, true);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.d.InterfaceC0143d
                public s ox() {
                    return d.this.ia;
                }
            });
        } else {
            this.q = this.no;
        }
        try {
            com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
            if (dqVar != null) {
                dqVar.dq(this.f2552d);
                this.q.dq(this.p, this.dq.ob(), this.ia.p());
                this.q.dq(this.kk.mn(), this.o);
                dq();
            }
        } catch (Throwable unused) {
        }
    }

    public void dq(j jVar, com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        if (this.r) {
            return;
        }
        this.r = true;
        this.f2552d = jVar;
        this.o = dVar;
        this.mp.dq(jVar);
        this.mn = abstractEndCardFrameLayout;
        dq(abstractEndCardFrameLayout);
        dq(dqVar);
        this.le = com.bytedance.sdk.openadsdk.core.mp.s.dq(String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(this.f2552d)));
    }

    public void dq(final String str) {
        this.dq.er().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.8
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                d.this.mp.dq(str);
            }
        });
    }

    public void dq(Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.dq(map);
        }
    }

    public void dq(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.dq(jSONObject);
        }
    }

    public void dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.d(z);
        }
    }

    public void dq(boolean z, int i, String str) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.dq(z, i, str);
        }
    }

    public long e() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            return oxVar.n();
        }
        return 0L;
    }

    public boolean er() {
        return this.cd.get();
    }

    public boolean f() {
        boolean fw = pa.o(this.f2552d) ? fw() : cd();
        if (gh()) {
            return fw || l();
        }
        return false;
    }

    public boolean fw() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            return dqVar.d();
        }
        return false;
    }

    public boolean gh() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            return dqVar.p();
        }
        return false;
    }

    public void h() {
        ox(true);
        if (this.ig != null && ig.dq(this.f2552d)) {
            this.ig.ji();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar == null || !oxVar.ox()) {
            s(false);
        } else if (this.ig.h() || !l.mn(this.f2552d)) {
            this.ig.dq(this.dq.yy() instanceof kk ? 2 : 0);
        } else {
            i();
        }
        if (this.no != null) {
            this.q = this.ig;
        }
    }

    public void i() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.ce();
        }
    }

    public void ia() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.kx();
        }
    }

    public void ig() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.gh();
        }
    }

    public boolean ir() {
        return this.jy;
    }

    public void iw() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar != null) {
            dVar.jy();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.jy();
        }
    }

    public void iw(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.iw(z);
        }
    }

    public String j() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        return dqVar != null ? dqVar.wp() : "endcard";
    }

    public boolean ji() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        return oxVar != null && oxVar.ox();
    }

    public void jy() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.ia();
        }
    }

    public void k() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar;
        if (this.q != this.no || (oxVar = this.ig) == null) {
            return;
        }
        oxVar.er();
        this.ig.iw();
    }

    public int kk() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            return dqVar.o();
        }
        return 0;
    }

    public void kx() {
        if (i.s(this.f2552d) || vf()) {
            return;
        }
        this.f2553f = Math.max(dq(this.f2552d), 0);
        dq(0L);
    }

    public void le() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar != null) {
            this.q = dVar;
        }
    }

    public void mn() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.f();
        }
    }

    public void mp() {
        if (!uh.fw(this.f2552d)) {
            kx();
        }
        this.ia.ox(false);
        this.ia.iw(false);
        this.ia.d(this.f2552d.qc());
        this.ia.mn(false);
        this.ia.s(!(this.q instanceof com.bytedance.sdk.openadsdk.core.component.reward.endcard.d));
        gx();
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.s();
            this.q.dq(1);
        }
    }

    public void n() {
        ox(false);
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.er();
            this.ig.iw();
        }
        if (this.fw) {
            wn();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar != null) {
            this.q = dVar;
        }
    }

    public void nh() {
        this.i = uh.d(this.f2552d, this.dq.yy().ce());
        this.gh.set(uh.i(this.f2552d));
        com.bytedance.sdk.openadsdk.core.mn.p.ox = true;
    }

    public void no() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.fw();
        }
    }

    public String o() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        return dqVar != null ? dqVar.no() : "";
    }

    public int ob() {
        return this.i;
    }

    public boolean op() {
        return this.q instanceof com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox;
    }

    public void ox() {
        if (vf()) {
            return;
        }
        int i = this.f2553f;
        if (i >= 0) {
            this.dq.d(i);
            dq(0L);
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.e();
        }
    }

    public void ox(boolean z) {
        this.jy = z;
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.mn(z);
        }
    }

    public void p() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.mp();
        }
    }

    public void p(boolean z) {
        this.cd.set(z);
    }

    public boolean q() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            return dqVar.mn();
        }
        return false;
    }

    public boolean r() {
        if (this.fw) {
            return true;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        return dqVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox ? this.ig.op() : dqVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.endcard.d;
    }

    public void s() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
        if (dqVar != null) {
            dqVar.cd();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar2 = this.q;
        if (dqVar2 != null) {
            dqVar2.q();
        }
    }

    public void s(boolean z) {
        if (er() || ir()) {
            this.fw = true;
            com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq dqVar = this.q;
            if (dqVar != null) {
                dqVar.r();
                this.q.iw();
            }
            com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
            if (oxVar != null) {
                oxVar.k();
                this.ig.s(true);
            }
            s sVar = this.ia;
            if (sVar != null) {
                sVar.mn();
            }
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().iw(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.3
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    com.bytedance.sdk.openadsdk.core.gh.dq.ox iw = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(d.this.p ? 7 : 8).ox(String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(d.this.f2552d))).iw(com.bytedance.sdk.openadsdk.core.ir.c.mp(d.this.f2552d));
                    iw.d(d.this.kk()).mn(d.this.o());
                    iw.ia(d.this.f2552d.dn()).p(d.this.f2552d.fx());
                    return iw;
                }
            });
            this.mp.dq();
            if (gh.dq(this.f2552d)) {
                this.dq.mp(8);
            }
            this.ia.dq(true);
            this.ia.mn(false);
            this.dq.er().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.d.4
                @Override // java.lang.Runnable
                public void run() {
                    d.this.ia.dq(true);
                    if (d.this.ia.s()) {
                        return;
                    }
                    d.this.ia.dq(false, null, null, true, true);
                    if (d.this.ce() && d.this.p) {
                        d.this.t();
                    }
                }
            }, 500L);
            if (z) {
                if (!uh.fw(this.f2552d)) {
                    this.ia.dq(false, null, null, true, true);
                }
                this.ia.s(false);
                this.ia.d(this.f2552d.qc());
            }
        }
    }

    public boolean u() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar == null) {
            return false;
        }
        return dVar.i();
    }

    public boolean vf() {
        return er() && this.gh.get();
    }

    public void wn() {
        this.mp.ox();
    }

    public void wp() {
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.d dVar = this.no;
        if (dVar != null) {
            dVar.kk();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.kk();
        }
    }
}
