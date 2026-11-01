package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ox extends d {
    public ox(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.d
    public void dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        ((d) this).dq = new BannerExpressVideoView(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        dq dqVar = ((d) this).dq;
        if (dqVar != null) {
            dqVar.setVideoAdListener(oxVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d
    public com.bytedance.sdk.openadsdk.core.multipro.d.dq no() {
        WeakReference<BannerExpressBackupView> weakReference = this.mn;
        if (weakReference != null && weakReference.get() != null) {
            return this.mn.get().getVideoModel();
        }
        dq dqVar = ((d) this).dq;
        if (dqVar != null) {
            return ((BannerExpressVideoView) dqVar).getVideoModel();
        }
        return null;
    }
}
