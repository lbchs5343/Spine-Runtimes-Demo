package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;

/* loaded from: classes3.dex */
public class k extends e {
    public k(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.e, com.bytedance.sdk.openadsdk.core.nativeexpress.i
    public void dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.p = "feed_video_middle_page";
        if (jVar == null) {
            return;
        }
        if (pa.q(this.ox) != null) {
            ((i) this).dq = new NativeExpressVideoView(context, jVar, dVar, this.p);
        } else {
            ((i) this).dq = new NativeExpressView(context, jVar, dVar, this.p);
        }
        dq(((i) this).dq, this.ox);
        ((i) this).dq.setBackupListener(new com.bytedance.sdk.component.adexpress.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.1
            @Override // com.bytedance.sdk.component.adexpress.d.ox
            public boolean dq(ViewGroup viewGroup, int i) {
                return false;
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(boolean z) {
        NativeExpressView nativeExpressView = ((i) this).dq;
        if (nativeExpressView == null || !(nativeExpressView instanceof NativeExpressVideoView)) {
            return;
        }
        ((NativeExpressVideoView) nativeExpressView).setCanInterruptVideoPlay(z);
    }
}
