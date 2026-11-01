package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.component.splash.o;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
abstract class ox {

    /* renamed from: d, reason: collision with root package name */
    protected ViewGroup f2748d;
    protected Context dq;
    protected j ox;
    protected o.dq p;

    public void d() {
        o.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.d();
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.ox, "splash_ad", "close_splash_icon");
    }

    public abstract String dq();

    public void dq(Context context, ViewGroup viewGroup, j jVar) {
        this.dq = context;
        this.f2748d = viewGroup;
        this.ox = jVar;
    }

    public abstract void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar);

    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar, o.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.ox, "splash_ad", dq());
        this.f2748d.setVisibility(0);
        this.p = dqVar;
    }

    public void dq(boolean z) {
    }
}
