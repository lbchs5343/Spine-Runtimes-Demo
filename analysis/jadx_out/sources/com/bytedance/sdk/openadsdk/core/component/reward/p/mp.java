package com.bytedance.sdk.openadsdk.core.component.reward.p;

import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;

/* loaded from: classes3.dex */
public class mp extends dq {
    public mp(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
    }

    public static int d(j jVar) {
        return 1;
    }

    public static boolean dq(j jVar) {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
        if (uh.fw(this.f2635d)) {
            boolean ox = uh.ox();
            boolean ox2 = uh.ox();
            this.dq.ox(0);
            if (e() > nh() || this.f2637f) {
                com.bytedance.sdk.openadsdk.core.mn.p.dq = 0;
                com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar = this.gh;
                boolean z = this.q;
                sVar.dq(z, z ? "领取成功" : "", ox ? "" : "跳过", ox2, true);
                this.dq.gx();
                return;
            }
            int iw = iw(true);
            int iw2 = iw(false);
            com.bytedance.sdk.openadsdk.core.mn.p.dq = iw;
            boolean z2 = e() > this.op.s() || this.dq.by();
            boolean z3 = !ox && z2;
            boolean z4 = ox2 && z2;
            com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar2 = this.gh;
            boolean z5 = this.q;
            StringBuilder sb = new StringBuilder();
            sb.append(iw2);
            sb.append("s");
            sb.append(this.q ? "后可领取奖励" : "");
            sVar2.dq(z5, sb.toString(), z3 ? "跳过" : "", z4, z2);
            d(iw);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.gh.d(this.f2635d.qc());
        if (iw()) {
            this.kk.s(8);
            this.kk.iw(8);
            this.gh.dq(false);
        } else {
            this.kk.s(0);
            this.kk.iw(0);
            this.gh.s(true);
            this.dq.t();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void f() {
        super.f();
        this.gh.d(this.f2635d.qc());
        this.gh.s(true);
        this.kk.iw(0);
        this.kk.s(0);
        this.dq.t();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean ha() {
        if (!this.q) {
            return false;
        }
        if (this.f2635d.ce() == 2 && this.f2635d.dr() == 3) {
            return false;
        }
        return (this.f2635d.ce() == 2 && this.f2635d.dr() == 7) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void le() {
        super.le();
        vf();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return xz();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean vw() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return true;
    }
}
