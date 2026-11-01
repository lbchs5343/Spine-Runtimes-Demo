package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.content.Context;
import android.content.IntentFilter;
import android.view.View;
import com.bytedance.sdk.component.utils.HomeWatcherReceiver;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.RewardJointEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ia extends dq {

    /* renamed from: c, reason: collision with root package name */
    boolean f2639c;
    private HomeWatcherReceiver ce;
    int ir;
    int u;

    public ia(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.ir = 0;
        this.u = 0;
        this.f2639c = false;
    }

    private void bu() {
        try {
            HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
            this.ce = homeWatcherReceiver;
            homeWatcherReceiver.dq(new HomeWatcherReceiver.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.ia.1
                @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.dq
                public void d() {
                    ia.this.f2639c = true;
                }

                @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.dq
                public void dq() {
                    ia.this.f2639c = true;
                }
            });
            this.dq.getApplicationContext().registerReceiver(this.ce, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        } catch (Throwable unused) {
        }
    }

    public static int d(j jVar) {
        if (l.jy(jVar)) {
            return 5;
        }
        return gh.dq(jVar) ? 6 : 0;
    }

    private void dq(Context context) {
        if (i.ox(this.f2635d)) {
            try {
                this.ce.dq(null);
                context.getApplicationContext().unregisterReceiver(this.ce);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean dq(j jVar) {
        return i.s(jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
        if (gh.no(this.f2635d)) {
            return;
        }
        int e2 = e();
        int i = this.ir;
        int i2 = i - e2;
        if (e2 >= i) {
            this.gh.dq(false, null, null, true, true);
            if (!gh.no(this.f2635d)) {
                this.dq.mp();
            }
        } else {
            int i3 = this.u;
            if (i3 >= i) {
                this.gh.dq(false, String.valueOf(i2), null, false, false);
            } else if (e2 >= i3) {
                this.gh.dq(false, String.valueOf(i2), "跳过", false, true);
            } else {
                this.gh.dq(false, String.valueOf(i2), (this.u - e2) + "s后可跳过", false, false);
            }
        }
        this.dq.ox(0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(boolean z) {
        super.d(z);
        dq("return_foreground");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.gh.dq(true);
        this.kk.iw(8);
        if (gh.dq(this.f2635d)) {
            fd();
        } else {
            this.gh.s(true);
            this.gh.d(this.f2635d.qc());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public d.dq dq(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        if (this.le.kk()) {
            return new d.dq(false, 0, "");
        }
        this.dq.nh();
        this.dq.j();
        com.bytedance.sdk.openadsdk.core.component.reward.ox.ia iaVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox.ia(this.dq, this.f2635d);
        iaVar.dq(this.i.r());
        iaVar.dq(wn());
        return iaVar.d(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.ia.2
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
                ia.this.dq.vf();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(View view) {
        super.dq(view);
        if (view.getId() == 2114387731) {
            this.le.s();
        }
    }

    public void dq(String str) {
        if (this.f2639c) {
            HashMap hashMap = new HashMap();
            hashMap.put(MediationConstant.EXTRA_DURATION, Long.valueOf(this.i.e()));
            com.bytedance.sdk.openadsdk.core.ig.ox.mn(this.f2635d, this.ig, str, hashMap);
            if ("return_foreground".equals(str)) {
                this.f2639c = false;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int er() {
        if (gh.no(this.f2635d) || this.ir == 0) {
            return 0;
        }
        return Math.max(0, ((int) Math.min((this.ir * this.f2635d.ie()) / 100.0f, 27.0f)) - e());
    }

    public void fd() {
        int rc = this.f2635d.rc();
        if (rc == 0) {
            this.kk.s(0);
            this.gh.s(true);
            this.gh.d(this.f2635d.qc());
        } else {
            if (rc != 1) {
                if (rc != 3) {
                    return;
                }
                this.gh.s(false);
                this.gh.d(false);
                this.gh.dq(false, null, null, true, true);
                return;
            }
            this.kk.s(0);
            this.gh.d(this.f2635d.qc());
            if (gh.p(this.f2635d)) {
                this.gh.s(j.d(this.f2635d));
            } else {
                this.gh.s(com.bytedance.sdk.openadsdk.h.o.dq(this.f2635d));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean ha() {
        return gh.p(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ia() {
        super.ia();
        bu();
        com.bytedance.sdk.openadsdk.core.playable.p.dq().dq(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean iw() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void jy() {
        super.jy();
        dq(this.dq);
        com.bytedance.sdk.openadsdk.core.playable.p.dq().d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        return com.bytedance.sdk.openadsdk.res.s.dq(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int mn(boolean z) {
        int i;
        if (gh.no(this.f2635d) || (i = this.ir) == 0) {
            return 0;
        }
        return Math.max(0, ((int) Math.min(i, 27.0f)) - e());
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View o() {
        if (gh.p(this.f2635d)) {
            this.no = new RewardJointEndCardFrameLayout(this.dq, this.f2635d);
        }
        return super.o();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean op() {
        if (ce() > 0) {
            return false;
        }
        if (!gh.p(this.f2635d) && l.r(this.f2635d) == 0) {
            return this.i.r();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq, com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void ox() {
        this.gh.dq(4);
        this.i.dq();
        this.dq.r();
        this.i.i();
        if (gh.no(this.f2635d)) {
            this.gh.d(true);
        }
        this.ir = i.mn(this.f2635d);
        this.u = i.ia(this.f2635d);
        kx();
        if (gh.p(this.f2635d)) {
            this.dq.iw();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ox(boolean z) {
        super.ox(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void q() {
        super.q();
        this.dq.j();
        dq("go_background");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return gh.p(this.f2635d) && j.d(this.f2635d);
    }
}
