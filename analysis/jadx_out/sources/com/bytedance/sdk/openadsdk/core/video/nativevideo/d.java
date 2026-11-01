package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class d extends ox {
    public d(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2, boolean z3) {
        super(context, viewGroup, jVar, str, z, z2, z3);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.ox
    public void dq(int i, int i2) {
        super.dq(i, i2);
        s sVar = this.s;
        if (sVar == null || i <= 0 || i2 <= 0) {
            return;
        }
        sVar.ox(i, i2);
        this.s.dq(i, i2);
        d(-1, -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.ox
    public com.bykv.vk.openvk.component.video.api.renderview.d k() {
        s sVar = this.s;
        if (sVar != null) {
            return sVar.fw();
        }
        return null;
    }
}
