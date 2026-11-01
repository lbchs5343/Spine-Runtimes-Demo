package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;

/* loaded from: classes3.dex */
public class s extends ox {
    public s(TTBaseVideoActivity tTBaseVideoActivity, j jVar, com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar, boolean z) {
        super(tTBaseVideoActivity, jVar, dVar, sVar, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void d(View view) {
        super.d(view);
        if (gh.p(this.f2660d)) {
            this.s.c();
        } else {
            this.s.ce();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void dq(View view) {
        super.dq(view);
        if (dq()) {
            return;
        }
        this.s.xz().dq();
        if (gh.no(this.f2660d) || kk.s(this.f2660d) || kk.p(this.f2660d)) {
            this.s.o();
            return;
        }
        o oVar = new o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.top.s.1
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                s.this.s.jy();
                s.this.s.d();
            }
        };
        if (this.s.dq(oVar)) {
            this.iw--;
        } else {
            oVar.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void iw(View view) {
        super.iw(view);
        if (kk.s(this.f2660d) || kk.p(this.f2660d)) {
            this.s.o();
        } else {
            dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void ox(View view) {
        super.ox(view);
        this.s.ox("playable");
    }
}
