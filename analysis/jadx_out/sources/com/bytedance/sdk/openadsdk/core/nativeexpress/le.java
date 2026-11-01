package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class le extends e {
    public le(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.e, com.bytedance.sdk.openadsdk.core.nativeexpress.i
    public void dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.p = "draw_ad";
        NativeExpressDrawVideoView nativeExpressDrawVideoView = new NativeExpressDrawVideoView(context, jVar, dVar, "draw_ad");
        ((i) this).dq = nativeExpressDrawVideoView;
        dq(nativeExpressDrawVideoView, this.ox);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(boolean z) {
        NativeExpressView nativeExpressView = ((i) this).dq;
        if (nativeExpressView != null) {
            ((NativeExpressVideoView) nativeExpressView).setCanInterruptVideoPlay(z);
        }
    }
}
