package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;

/* loaded from: classes3.dex */
public class p extends ox {
    public p(TTBaseVideoActivity tTBaseVideoActivity, j jVar, com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar, boolean z) {
        super(tTBaseVideoActivity, jVar, dVar, sVar, z);
    }

    private void d() {
        o oVar = new o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.p.1
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                p.this.s.d();
            }
        };
        if (this.s.dq(oVar)) {
            this.iw--;
        } else {
            oVar.d();
        }
    }

    private void ox() {
        this.s.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void d(View view) {
        super.d(view);
        this.s.ce();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void dq(View view) {
        super.dq(view);
        if (dq()) {
            return;
        }
        this.s.xz().d();
        if (this.ox.vf()) {
            this.s.d();
        } else if (uh.fw(this.f2660d)) {
            d();
        } else {
            ox();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void iw(View view) {
        super.iw(view);
        dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void ox(View view) {
        super.ox(view);
        this.s.ox(this.ox.j());
    }
}
