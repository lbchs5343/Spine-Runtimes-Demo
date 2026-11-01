package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class BannerExpressVideoView extends dq {
    public BannerExpressVideoView(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public void dq() {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(this.dq, this.p, this.s, this.o);
        this.f2475d = nativeExpressVideoView;
        addView(nativeExpressVideoView, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public void dq(j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(this.dq, jVar, dVar, this.o);
        this.ox = nativeExpressVideoView;
        nativeExpressVideoView.setExpressInteractionListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressVideoView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, float f2, float f3) {
                BannerExpressVideoView.this.dq(f2, f3);
                BannerExpressVideoView.this.iw();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, int i) {
                BannerExpressVideoView bannerExpressVideoView = BannerExpressVideoView.this;
                com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar = bannerExpressVideoView.iw;
                if (dqVar != null) {
                    dqVar.dq(bannerExpressVideoView, i);
                }
            }
        });
        ce.dq((View) this.ox, 8);
        addView(this.ox, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ NativeExpressView getCurView() {
        return super.getCurView();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ NativeExpressView getNextView() {
        return super.getNextView();
    }

    public com.bytedance.sdk.openadsdk.core.multipro.d.dq getVideoModel() {
        NativeExpressView nativeExpressView = this.f2475d;
        if (nativeExpressView != null) {
            return ((NativeExpressVideoView) nativeExpressView).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ void ox() {
        super.ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ void p() {
        super.p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ void s() {
        super.s();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ void setDuration(int i) {
        super.setDuration(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ void setExpressInteractionListener(com.bytedance.sdk.openadsdk.core.nativeexpress.dq dqVar) {
        super.setExpressInteractionListener(dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.dq
    public /* bridge */ /* synthetic */ void setVideoAdListener(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        super.setVideoAdListener(oxVar);
    }
}
