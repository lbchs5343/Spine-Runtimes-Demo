package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;

/* loaded from: classes3.dex */
public class s extends dq {
    public s(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
    }

    public static int d(j jVar) {
        return 3;
    }

    public static boolean dq(j jVar) {
        return (jVar == null || j.d(jVar)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
        super.cv();
        if (uh.fw(this.f2635d)) {
            this.dq.ox(0);
            int e2 = e();
            if (e2 > nh() || this.f2637f) {
                com.bytedance.sdk.openadsdk.core.mn.p.dq = 0;
                com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar = this.gh;
                boolean z = this.q;
                sVar.dq(z, z ? "领取成功" : "", null, true, true);
                this.dq.gx();
                if (this.o == null || k() != 7) {
                    return;
                }
                this.o.dq((CharSequence) "0", e2, 0, false);
                return;
            }
            int iw = iw(true);
            int iw2 = iw(false);
            com.bytedance.sdk.openadsdk.core.mn.p.dq = iw;
            boolean z2 = e2 > this.op.s() || this.dq.by();
            com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar2 = this.gh;
            boolean z3 = this.q;
            StringBuilder sb = new StringBuilder();
            sb.append(iw2);
            sb.append("s");
            sb.append(this.q ? "后可领取奖励" : "");
            sVar2.dq(z3, sb.toString(), null, z2, z2);
            d(iw);
            if (this.o == null || k() != 7) {
                return;
            }
            this.o.dq((CharSequence) String.valueOf(iw2), e2, 0, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.kk.s(8);
        this.kk.iw(8);
        this.gh.s(com.bytedance.sdk.openadsdk.h.o.dq(this.f2635d));
        this.gh.d(this.f2635d.qc());
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.iw iwVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.iw(this.dq, this.f2635d, z);
        this.kk = iwVar;
        return iwVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean ha() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        if (this.ox == 2) {
            int gv = this.f2635d.gv();
            return gv != 3 ? gv != 33 ? com.bytedance.sdk.openadsdk.res.s.gh(this.dq) : com.bytedance.sdk.openadsdk.res.s.cd(this.dq) : com.bytedance.sdk.openadsdk.res.s.fw(this.dq);
        }
        int gv2 = this.f2635d.gv();
        return gv2 != 3 ? gv2 != 33 ? com.bytedance.sdk.openadsdk.res.s.le(this.dq) : com.bytedance.sdk.openadsdk.res.s.i(this.dq) : com.bytedance.sdk.openadsdk.res.s.r(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return true;
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
        if (this.o.iw()) {
            return this.o.no();
        }
        return true;
    }
}
