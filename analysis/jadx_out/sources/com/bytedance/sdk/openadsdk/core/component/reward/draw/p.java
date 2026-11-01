package com.bytedance.sdk.openadsdk.core.component.reward.draw;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class p extends com.bytedance.sdk.openadsdk.core.component.reward.iw.d {
    private boolean op;

    public p(Context context, ViewGroup viewGroup, j jVar) {
        super(context, viewGroup, jVar, null);
        dq(false);
    }

    public boolean e() {
        return this.op;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.iw.d, com.bytedance.sdk.openadsdk.core.video.d.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public void ia() {
        if (this.op) {
            return;
        }
        super.ia();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.dq
    public void iw(boolean z) {
        super.iw(z);
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.iw.d, com.bytedance.sdk.openadsdk.core.video.d.dq
    public int k() {
        return 4;
    }

    public void mn(boolean z) {
        this.op = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public void o() {
        this.op = false;
        super.o();
    }

    public boolean wp() {
        return fw() != null && fw().q();
    }
}
