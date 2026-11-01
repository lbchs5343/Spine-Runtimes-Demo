package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.CommonEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import g.awf;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq extends d implements e.dq {
    protected boolean cd;

    /* renamed from: d, reason: collision with root package name */
    protected j f2635d;
    protected final TTBaseVideoActivity dq;

    /* renamed from: e, reason: collision with root package name */
    com.bytedance.sdk.openadsdk.core.component.reward.d.dq f2636e;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f2637f;
    protected boolean fw;
    protected com.bytedance.sdk.openadsdk.core.component.reward.d.s gh;
    protected com.bytedance.sdk.openadsdk.core.component.reward.d.d i;
    protected com.bytedance.sdk.openadsdk.core.d.mn ia;
    protected String ig;
    protected int iw;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.iw k;
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d kk;
    protected com.bytedance.sdk.openadsdk.core.component.reward.d.p le;
    protected boolean mp;
    protected AbstractEndCardFrameLayout no;
    protected com.bytedance.sdk.openadsdk.core.component.reward.layout.s o;
    protected com.bytedance.sdk.openadsdk.core.component.reward.s.ox op;
    protected int ox;
    protected float p;
    protected boolean q;
    protected com.bytedance.sdk.openadsdk.core.component.reward.d.iw r;
    protected int s;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.s wp;
    protected int mn = -1;
    protected AtomicBoolean jy = new AtomicBoolean(false);
    protected int kx = -5;
    protected boolean h = false;
    protected final e ji = new e(Looper.getMainLooper(), this);
    protected int bl = Integer.MIN_VALUE;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.o ir = new com.bytedance.sdk.openadsdk.core.nativeexpress.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.dq.1
        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public int d() {
            if (dq.this.o.d()) {
                return 4;
            }
            if (dq.this.o.ox()) {
                return 5;
            }
            if (dq.this.r.p()) {
                return 1;
            }
            if (dq.this.r.d()) {
                return 2;
            }
            dq.this.r.ox();
            return 3;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void d(int i) {
            if (uh.s(dq.this.f2635d)) {
                dq.this.dq.p(1);
            } else {
                dq.this.dq.dq(i, false);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public long dq() {
            dq dqVar = dq.this;
            dqVar.d(dqVar.iw(true));
            return dq.this.op.dq();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void dq(float f2) {
            dq.this.ox((int) (1000.0f / f2));
            dq.this.dq.uh().dq(f2);
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void dq(float f2, float f3, float f4, float f5, int i) {
            dq.this.dq.dq(f2, f3, f4, f5, i);
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void dq(int i) {
            if (i != 1) {
                if (i == 2) {
                    dq.this.r.h();
                    return;
                }
                if (i == 3) {
                    dq.this.r.ji();
                    return;
                } else if (i == 4) {
                    dq.this.r.mn();
                    return;
                } else if (i != 5) {
                    return;
                }
            }
            if (dq.this.r.d() || dq.this.r.ox() || dq.this.r.vf()) {
                return;
            }
            dq.this.dq.d(0L, false);
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void dq(int i, String str) {
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void dq(boolean z) {
            dq dqVar = dq.this;
            if (dqVar.mp != z) {
                dqVar.mp = z;
                dqVar.gh.d();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public long getActualPlayDuration() {
            return dq.this.r.u().by();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void ia() {
            dq.this.dq.ha();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void iw() {
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(dq.this.f2635d, "stats_reward_full_click_express_close");
            dq.this.gh.dq();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void kk() {
            dq.this.gh.ox();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void mn() {
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(dq.this.f2635d, "stats_reward_full_click_express_close");
            dq.this.dq.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void no() {
            dq.this.dq.kk(3);
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void o() {
            dq.this.dq.ia(1);
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public int ox() {
            return dq.this.e();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void p() {
            dq.this.h = true;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void s() {
            dq.this.h = false;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
        public void setPauseFromExpressView(boolean z) {
            dq.this.dq.f(1);
        }
    };
    public int n = 1000;

    public dq(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        this.dq = tTBaseVideoActivity;
        this.f2635d = jVar;
        this.ox = jVar.ho();
        this.p = jVar.es();
    }

    private int bu() {
        long max = Math.max(((long) (this.r.bl() * 1000.0d)) - this.r.op(), 0L);
        return Math.max((((int) (max / 1000)) + (((int) (max % 1000)) > 500 ? 1 : 0)) - gx(), 0);
    }

    private void fd() {
        this.gh.dq(false);
        this.kk.iw(8);
        this.kk.s(8);
        this.kk.ox(8);
        dc();
    }

    private int ia(boolean z) {
        long op = this.r.op();
        if (z) {
            return (int) Math.max(((int) (r1 / 1000)) + (((int) (Math.max(Math.min(uh.dq(), (long) ((this.r.bl() * 1000.0d) * (this.f2635d.ie() / 100.0f))) - ((gx() * 1000) + op), 0L) % 1000)) > 500 ? 1L : 0L), 0L);
        }
        long min = Math.min(uh.dq(), (long) (this.r.bl() * 1000.0d));
        long gx = gx() * 1000;
        long bl = (long) ((this.r.bl() % 1.0d) * 1000.0d);
        if (bl > 0) {
            op -= 1000 - bl;
        }
        return Math.round((min - (op + gx)) / 1000.0f);
    }

    public int bl() {
        return 0;
    }

    public int by() {
        return this.op.s();
    }

    public int c() {
        if (ha() && uh.fw(this.f2635d)) {
            return e();
        }
        return gx() + j();
    }

    public FrameLayout cd() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar;
        return gh.p(this.f2635d) ? this.no.getVideoArea() : (iw() && (sVar = this.o) != null && sVar.iw()) ? this.o.dq() : this.kk.ig();
    }

    public int ce() {
        if (vw() && this.i.vf()) {
            return this.kx;
        }
        if (!ha() || !uh.fw(this.f2635d)) {
            return er();
        }
        return (int) Math.max((nh() * (this.f2635d.ie() / 100.0f)) - e(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    public void d() {
        fd();
        jw();
        if (ha()) {
            uh.dq(this.f2635d, true);
        }
        if (uh()) {
            this.i.dq();
        }
        if (iw()) {
            s();
        } else {
            ox();
        }
    }

    public void d(int i) {
        this.bl = i;
    }

    public void d(View view) {
    }

    public void d(Map<String, Object> map) {
    }

    public void d(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = this.o;
        if (sVar != null) {
            sVar.s();
        }
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.d.s dq() {
        return this.gh;
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.ox oxVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.ox(this.dq, this.f2635d, z);
        this.kk = oxVar;
        return oxVar;
    }

    public d.dq dq(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        com.bytedance.sdk.openadsdk.core.component.reward.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox.ox(this.dq, this.f2635d);
        oxVar.dq(wn());
        oxVar.d(c());
        oxVar.ox(this.dq.op());
        oxVar.p(this.dq.ir());
        oxVar.ox(this.h);
        oxVar.p(uh.kx(this.f2635d) && !this.dq.mn.get());
        this.dq.nh();
        return oxVar.d(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.dq.5
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.d();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq() {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.dq();
                }
                dq.this.dq.vf();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq(int i) {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.dq(i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void ox() {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.ox();
                }
            }
        });
    }

    public void dq(int i) {
    }

    public void dq(int i, int i2) {
        this.s = i;
        this.iw = i2;
    }

    public void dq(int i, int i2, Intent intent) {
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 11) {
            if (!this.fw) {
                this.op.d();
            }
            vf();
            this.ji.sendEmptyMessageDelayed(11, this.n);
        }
    }

    public void dq(View view) {
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar, com.bytedance.sdk.openadsdk.core.component.reward.d.iw iwVar, com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.d.p pVar, com.bytedance.sdk.openadsdk.core.component.reward.d.dq dqVar) {
        this.gh = sVar;
        this.r = iwVar;
        this.i = dVar;
        this.le = pVar;
        this.f2636e = dqVar;
    }

    public final void dq(com.bytedance.sdk.openadsdk.core.d.mn mnVar) {
        this.ia = mnVar;
        TTBaseVideoActivity tTBaseVideoActivity = this.dq;
        j jVar = this.f2635d;
        String str = this.ig;
        this.k = new com.bytedance.sdk.openadsdk.core.nativeexpress.iw(tTBaseVideoActivity, jVar, str, c.dq(str)) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.iw, com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                if (j.s(this.f2768d)) {
                    return;
                }
                super.dq(view, oVar);
                dq.this.dq.dq(2);
            }
        };
        TTBaseVideoActivity tTBaseVideoActivity2 = this.dq;
        j jVar2 = this.f2635d;
        String str2 = this.ig;
        this.wp = new com.bytedance.sdk.openadsdk.core.nativeexpress.s(tTBaseVideoActivity2, jVar2, str2, c.dq(str2)) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.dq.3
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.s, com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                if (j.s(this.f2768d)) {
                    return;
                }
                super.dq(view, oVar);
                com.bytedance.sdk.openadsdk.core.d.dq.d dVar = (com.bytedance.sdk.openadsdk.core.d.dq.d) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.class);
                if (dVar == null || !dVar.d(view)) {
                    return;
                }
                dq.this.dq.dq(2);
            }
        };
        this.no.setClickListener(this.ia);
    }

    public void dq(String str, boolean z, boolean z2) {
        this.ig = str;
        this.mp = z;
        this.q = z2;
        this.op = new com.bytedance.sdk.openadsdk.core.component.reward.s.ox(z2, this.f2635d, this.r);
    }

    public void dq(Map<String, Object> map) {
    }

    public void dq(JSONObject jSONObject) {
    }

    public int e() {
        return this.op.p() + this.op.ox();
    }

    public int er() {
        return ia(true);
    }

    public void f() {
        this.kk.f();
    }

    public boolean fw() {
        return false;
    }

    public float[] gh() {
        TTBaseVideoActivity tTBaseVideoActivity = this.dq;
        int p = ce.p(tTBaseVideoActivity, ce.no(tTBaseVideoActivity));
        float f2 = this.iw;
        float f3 = this.s;
        int i = this.ox;
        if ((i == 1) != (f2 > f3)) {
            float f4 = f2 + f3;
            f3 = f4 - f3;
            f2 = f4 - f3;
        }
        if (i == 1) {
            f2 -= p;
        } else {
            f3 -= p;
        }
        return new float[]{f3, f2};
    }

    public int gx() {
        return this.op.p();
    }

    public void h() {
        if (this.kx < 0) {
            this.kx = this.i.ob();
        }
        int i = this.kx;
        if (i > 0) {
            this.kx = i - 1;
            this.gh.dq(false, awf.x(new StringBuilder(), this.kx, "s"), null, true, true);
        } else if (i == 0) {
            this.dq.p(0);
            this.gh.dq(false, "奖励已领取", null, true, true);
        }
    }

    public void i() {
        this.ji.removeMessages(11);
    }

    public void ia() {
        if ((this.q || !uh.k(this.f2635d)) && !(this instanceof no)) {
            return;
        }
        ob();
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.layout.s ig() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.s(this.dq);
        this.o = sVar;
        return sVar;
    }

    public void ir() {
    }

    public int iw(boolean z) {
        return (vw() && this.i.vf()) ? this.kx : (ha() && uh.fw(this.f2635d)) ? Math.max(nh() - e(), 0) : mn(z);
    }

    public boolean iw() {
        return this.f2635d.ce() == 2;
    }

    public int j() {
        return (int) (this.r.op() / 1000);
    }

    public void ji() {
        this.f2637f = true;
    }

    public void jy() {
        AbstractEndCardFrameLayout abstractEndCardFrameLayout = this.no;
        if (abstractEndCardFrameLayout != null) {
            abstractEndCardFrameLayout.d();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = this.o;
        if (sVar != null) {
            sVar.p();
        }
        if (xz() || this.i.er()) {
            return;
        }
        this.i.wp();
    }

    public final int k() {
        return this.mn;
    }

    public View kk() {
        int yy = this.f2635d.yy();
        return yy != 1 ? yy != 3 ? com.bytedance.sdk.openadsdk.res.s.dq(this.dq) : com.bytedance.sdk.openadsdk.res.s.p(this.dq) : com.bytedance.sdk.openadsdk.res.s.ox(this.dq);
    }

    public void kx() {
        if (this.jy.getAndSet(true)) {
            return;
        }
        this.ji.sendEmptyMessage(11);
    }

    public boolean l() {
        return !this.q && uh.k(this.f2635d) && this.ox == 1;
    }

    public void le() {
        if (!this.jy.get() || this.ji.hasMessages(11)) {
            return;
        }
        this.ji.sendEmptyMessageDelayed(11, this.n);
    }

    public int mn(boolean z) {
        return z ? ia(false) : bu();
    }

    public boolean mn() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar;
        return iw() && (sVar = this.o) != null && sVar.iw();
    }

    public AbstractEndCardFrameLayout mp() {
        return this.no;
    }

    public boolean n() {
        return false;
    }

    public int nh() {
        return i.s(this.f2635d) ? i.mn(this.f2635d) : uh.jy(this.f2635d);
    }

    public View no() {
        return com.bytedance.sdk.openadsdk.res.s.s(this.dq);
    }

    public View o() {
        if (this.no == null) {
            this.no = new CommonEndCardFrameLayout(this.dq, this.f2635d);
        }
        return this.no;
    }

    public void ob() {
        if (this.cd || Build.VERSION.SDK_INT == 26) {
            return;
        }
        TTBaseVideoActivity tTBaseVideoActivity = this.dq;
        tTBaseVideoActivity.setTheme(r.mn(tTBaseVideoActivity, "tt_full_screen_interaction"));
        ce.iw((Activity) this.dq);
        this.cd = true;
    }

    public boolean op() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void ox() {
        p();
    }

    public void ox(int i) {
        this.n = i;
    }

    public void ox(boolean z) {
    }

    public void p() {
        boolean iw = this.o.iw();
        if (!this.i.er() && !iw) {
            f();
        }
        this.i.dq(this.o.ig());
        if (iw) {
            this.o.dq().setBackgroundColor(-16777216);
        }
        this.kk.ox(!iw);
        this.o.ox(iw);
        this.gh.dq(v() || !iw);
        this.dq.iw();
        if (uh.fw(this.f2635d)) {
            kx();
        }
    }

    public void p(int i) {
        this.op.dq(i);
    }

    public void p(boolean z) {
        if (!z) {
            if (this.ox == 1) {
                this.kk.p(8);
            }
        } else {
            if (this.ox == 1) {
                this.kk.p(0);
            }
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f2635d)) {
                this.kk.iw(0);
            }
        }
    }

    public void q() {
    }

    public void r() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = this.o;
        if (sVar != null) {
            sVar.dq(this.op);
        }
        if (this.q) {
            this.kk.d((int) (this.r.op() / 1000));
        }
    }

    public void s() {
        this.dq.mn(0);
        this.gh.dq(v());
        float f2 = this.s;
        float f3 = this.iw;
        float[] fArr = {f2, f3};
        if (f2 < 10.0f || f3 < 10.0f) {
            fArr = gh();
        }
        this.o.dq(this.f2635d, h.dq(this.dq.kx() ? 7 : 8, String.valueOf(c.kk(this.f2635d)), fArr[0], fArr[1]), this.ig, this.mp);
        this.kk.ox(false);
        this.o.ox(true);
        this.o.dq(this.ir);
        this.o.dq(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.dq.4
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void d(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, float f4, float f5) {
                dq.this.i.dq();
                dq.this.dq.i();
                dq.this.dq.mn(8);
                dq dqVar = dq.this;
                dqVar.mn = dqVar.o.kk();
                dq dqVar2 = dq.this;
                if (dqVar2.mn == 0) {
                    uh.d(dqVar2.f2635d, true);
                }
                dq.this.ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, String str, int i) {
                dq.this.i.dq();
                dq.this.dq.i();
                dq.this.dq.mn(8);
                dq.this.gh.dq(true);
                dq.this.ji.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.dq.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.dq.r();
                    }
                });
            }
        });
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.k.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.dq.ob());
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.wp.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.dq.ob());
        this.dq.dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.k.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        this.dq.dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.wp.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        this.o.dq(this.k, this.wp);
        this.o.ia();
    }

    public void s(boolean z) {
        this.mp = z;
        this.r.ox(z);
    }

    public com.bytedance.sdk.openadsdk.core.nativeexpress.o t() {
        return this.ir;
    }

    public com.bytedance.sdk.openadsdk.core.video.d.d u() {
        return null;
    }

    public void vf() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = this.o;
        if (sVar != null) {
            sVar.dq(this.op);
        }
        if (vw() && this.i.vf()) {
            h();
        } else {
            cv();
        }
    }

    public int wn() {
        int i = this.bl;
        return i == Integer.MIN_VALUE ? iw(true) : i;
    }

    public void wp() {
        if (uh.fw(this.f2635d)) {
            le();
        }
        if (this.i.vf()) {
            kx();
        }
    }
}
