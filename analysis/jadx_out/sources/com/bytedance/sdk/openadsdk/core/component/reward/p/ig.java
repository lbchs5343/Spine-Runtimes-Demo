package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ig extends dq {

    /* renamed from: c, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ig.s f2641c;
    int ir;
    int u;

    public ig(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.ir = 0;
        this.u = 0;
        com.bytedance.sdk.openadsdk.core.ig.s sVar = new com.bytedance.sdk.openadsdk.core.ig.s(jVar);
        this.f2641c = sVar;
        sVar.dq(true);
    }

    public static int d(j jVar) {
        return com.bytedance.sdk.openadsdk.core.ugeno.kk.ox(jVar) ? 6 : 7;
    }

    public static boolean dq(j jVar) {
        return jVar.cd() == 1 && gh.dq(jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
        int e2 = e();
        int max = Math.max(0, this.ir - e2);
        if (!this.i.er()) {
            int i = this.ir;
            if (e2 >= i) {
                if (com.bytedance.sdk.openadsdk.core.ugeno.kk.ox(this.f2635d)) {
                    com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar = this.gh;
                    boolean z = this.q;
                    sVar.dq(z, z ? "领取成功" : "", null, true, true);
                } else {
                    this.gh.dq(false, null, null, true, true);
                }
                this.dq.mp();
            } else if (this.u >= i) {
                this.gh.dq(false, String.valueOf(max), null, false, false);
            } else if (com.bytedance.sdk.openadsdk.core.ugeno.kk.ox(this.f2635d)) {
                com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar2 = this.gh;
                boolean z2 = this.q;
                StringBuilder sb = new StringBuilder();
                sb.append(max);
                sb.append("s");
                sb.append(this.q ? "后可领取奖励" : "");
                sVar2.dq(z2, sb.toString(), null, this.u <= e2, true);
            } else if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
                if (e2 >= this.u) {
                    this.gh.dq(false, null, null, true, true);
                }
            } else if (e2 >= this.u) {
                this.gh.dq(false, String.valueOf(max), "跳过", false, true);
            } else {
                this.gh.dq(false, String.valueOf(max), (this.u - e2) + "s后可跳过", false, false);
            }
        }
        this.dq.ox(0);
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d)) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).dq(max);
        }
        if (max == 0) {
            com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
            if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) {
                ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) dVar).mn();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(boolean z) {
        super.d(z);
        this.f2641c.ox();
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) dVar).kk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.kk.s(0);
        this.gh.dq(true);
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
            this.gh.s(true);
        }
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
            this.gh.d(false);
        } else {
            this.gh.d(this.f2635d.qc());
        }
        if (!com.bytedance.sdk.openadsdk.core.ugeno.kk.ox(this.f2635d)) {
            this.gh.s(false);
            this.gh.dq(false, null, null, true, true);
            return;
        }
        this.gh.ox(true);
        this.gh.s(true);
        com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar = this.gh;
        boolean z = this.q;
        StringBuilder sb = new StringBuilder();
        sb.append(ce());
        sb.append("s");
        sb.append(this.q ? "后可领取奖励" : "");
        sVar.dq(z, sb.toString(), null, true, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.dq dqVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.dq(this.dq, this.f2635d, z, this.f2641c, this.gh);
        this.kk = dqVar;
        return dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public d.dq dq(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        this.dq.nh();
        this.dq.j();
        com.bytedance.sdk.openadsdk.core.component.reward.ox.ia iaVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox.ia(this.dq, this.f2635d);
        iaVar.dq(this.i.r());
        iaVar.dq(wn());
        return iaVar.d(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.ig.1
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
                if (com.bytedance.sdk.openadsdk.core.ugeno.kk.p(ig.this.f2635d) && ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) ig.this.kk).p()) {
                    return;
                }
                ig.this.dq.vf();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int er() {
        if ((this.i.er() && gh.dq(this.f2635d)) || this.ir == 0) {
            return 0;
        }
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
            return Math.max(this.ir - e(), 0);
        }
        return Math.max(((int) Math.min((this.ir * this.f2635d.ie()) / 100.0f, 27.0f)) - e(), 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void i() {
        super.i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ia() {
        JSONObject ox;
        super.ia();
        com.bytedance.sdk.openadsdk.core.playable.p.dq().dq(this.f2635d);
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
            com.bytedance.sdk.openadsdk.core.ugeno.o.dq r = this.f2635d.r();
            this.ir = 30;
            if (r != null && (ox = r.ox()) != null) {
                this.ir = ox.optInt("reward_time", 30);
            }
        } else {
            this.ir = i.mn(this.f2635d);
        }
        this.u = i.ia(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean iw() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void jy() {
        super.jy();
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if ((dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) && ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) dVar).iw()) {
            this.f2641c.p();
        }
        this.kk.o();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        FrameLayout frameLayout = new FrameLayout(this.dq);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void le() {
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d) && ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).ox()) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).dq(false);
        } else {
            super.le();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int mn(boolean z) {
        if ((this.i.er() && gh.dq(this.f2635d)) || this.ir == 0) {
            return 0;
        }
        return (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) ? Math.max(this.ir - e(), 0) : Math.max(Math.min(this.ir, 27) - e(), 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean op() {
        if (ce() > 0) {
            return false;
        }
        if (!com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d)) {
            return true;
        }
        ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).dq(0);
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq, com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void ox() {
        this.gh.dq(4);
        this.kk.ox(true);
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.f2635d) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).dq(Math.max(0, this.ir - e()));
        }
        this.dq.d(true, true);
        kx();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ox(boolean z) {
        super.ox(z);
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) {
            if (((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) dVar).iw()) {
                this.f2641c.dq(((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).s().get());
            }
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).ia();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void q() {
        super.q();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void s(boolean z) {
        super.s(z);
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.f2635d)) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.dq) this.kk).d(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return false;
    }
}
