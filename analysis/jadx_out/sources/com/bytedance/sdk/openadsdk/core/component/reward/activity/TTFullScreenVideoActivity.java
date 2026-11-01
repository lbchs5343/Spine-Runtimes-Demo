package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import com.bytedance.sdk.openadsdk.core.component.reward.dq.dq;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void h() {
        if (this.ox.getAndSet(true)) {
            return;
        }
        p("onAdClose");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public boolean kx() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void ox(boolean z) {
        char c2 = 65535;
        if (this.k) {
            if (wp.d().ml() == 1) {
                c2 = 2000;
            }
        } else if (z) {
            c2 = 0;
        }
        if (c2 < 0 || this.r.get()) {
            return;
        }
        if (c2 != 0) {
            this.f2520d.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TTFullScreenVideoActivity.this.r.getAndSet(true)) {
                        return;
                    }
                    dq.dq().dq(String.valueOf(TTFullScreenVideoActivity.this.nh));
                }
            }, 2000L);
        } else {
            if (this.r.getAndSet(true)) {
                return;
            }
            dq.dq().dq(String.valueOf(this.nh));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void p(String str) {
        com.bytedance.sdk.openadsdk.core.component.reward.dq.dq(1, this.vf, str, null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void t() {
        String str;
        super.t();
        if (uh.fw(this.j) || this.op.ir()) {
            return;
        }
        if (this.u.c()) {
            this.n.dq(false, null, null, true, true);
            return;
        }
        int op = ((int) this.u.op()) / 1000;
        String str2 = this.er.iw(false) + "s";
        boolean z = op >= this.er.by();
        if (z) {
            str = "跳过";
        } else if (wp.d().s(String.valueOf(this.nh))) {
            str = (this.er.by() - op) + "s后可跳过";
        } else {
            str = null;
        }
        this.n.dq(false, str2, str, false, z);
    }
}
