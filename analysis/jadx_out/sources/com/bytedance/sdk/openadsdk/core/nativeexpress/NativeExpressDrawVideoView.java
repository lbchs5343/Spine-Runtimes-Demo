package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class NativeExpressDrawVideoView extends NativeExpressVideoView {
    private int i;

    public NativeExpressDrawVideoView(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str) {
        super(context, jVar, dVar, str);
        this.i = getResources().getConfiguration().orientation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.width = i;
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    private void wp() {
        int i = getResources().getConfiguration().orientation;
        if (this.i != i) {
            this.i = i;
            ce.dq(this, new ce.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressDrawVideoView.1
                @Override // com.bytedance.sdk.openadsdk.core.ir.ce.dq
                public void dq(View view) {
                    int width = NativeExpressDrawVideoView.this.getWidth();
                    int height = NativeExpressDrawVideoView.this.getHeight();
                    NativeExpressDrawVideoView nativeExpressDrawVideoView = NativeExpressDrawVideoView.this;
                    nativeExpressDrawVideoView.dq(nativeExpressDrawVideoView.mp, width, height);
                    View findViewById = NativeExpressDrawVideoView.this.mp.findViewById(2114387717);
                    NativeExpressDrawVideoView.this.dq(findViewById, width, height);
                    if (findViewById != null) {
                        findViewById.requestLayout();
                    }
                    NativeExpressDrawVideoView nativeExpressDrawVideoView2 = NativeExpressDrawVideoView.this;
                    nativeExpressDrawVideoView2.dq(nativeExpressDrawVideoView2.getWebView(), width, height);
                    ExpressVideoView expressVideoView = NativeExpressDrawVideoView.this.o;
                    if (expressVideoView != null) {
                        expressVideoView.dq(width, height);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView
    public ExpressVideoView dq(Context context, j jVar, String str) {
        return new ExpressVideoView(context, jVar, str, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView, com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        wp();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        wp();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        wp();
    }
}
