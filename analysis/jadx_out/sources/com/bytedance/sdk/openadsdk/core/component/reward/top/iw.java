package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class iw extends ox {
    public iw(TTBaseVideoActivity tTBaseVideoActivity, j jVar, com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar, boolean z) {
        super(tTBaseVideoActivity, jVar, dVar, sVar, z);
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
        this.s.xz().dq();
        if (this.s.no()) {
            this.iw--;
            return;
        }
        this.ox.dq(true);
        this.ox.le();
        this.s.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void ox(View view) {
        super.ox(view);
        this.s.ox("playable");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.ox, com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void p(View view) {
        super.p(view);
        this.s.k();
    }
}
