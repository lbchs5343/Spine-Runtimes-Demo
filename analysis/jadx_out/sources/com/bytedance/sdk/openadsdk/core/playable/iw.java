package com.bytedance.sdk.openadsdk.core.playable;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.h.o;

/* loaded from: classes3.dex */
class iw extends com.bytedance.sdk.openadsdk.core.video.d.dq {
    private boolean op;

    public iw(Context context, ViewGroup viewGroup, j jVar, com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        super(context, viewGroup, jVar, dqVar);
        this.op = true;
        dq(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.dq
    public boolean O_() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.dq
    public void iw(boolean z) {
        super.iw(z);
        if (this.op) {
            if (!o.dq(this.iw) || s()) {
                d();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.dq
    public int k() {
        return 5;
    }

    public void mn(boolean z) {
        this.op = z;
    }

    public void wp() {
        yy();
    }
}
