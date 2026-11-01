package com.bytedance.sdk.openadsdk.core.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;

/* loaded from: classes3.dex */
public abstract class mn extends dq {
    public mn(Context context, j jVar, String str, int i) {
        super(context, jVar, str, i);
    }

    public abstract void d(View view, o oVar);

    @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
    public void dq(View view, o oVar) {
        if (j.s(this.f2768d)) {
            return;
        }
        super.dq(view, oVar);
        com.bytedance.sdk.openadsdk.core.d.dq.d dVar = (com.bytedance.sdk.openadsdk.core.d.dq.d) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.class);
        if (dVar == null || !dVar.d(view)) {
            return;
        }
        d(view, oVar);
    }
}
