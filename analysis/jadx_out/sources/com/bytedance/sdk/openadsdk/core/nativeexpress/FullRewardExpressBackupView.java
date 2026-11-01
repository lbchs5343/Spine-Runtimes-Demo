package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class FullRewardExpressBackupView extends BackupView {
    private FrameLayout jy;
    private View mp;
    private NativeExpressView q;

    public FullRewardExpressBackupView(Context context) {
        super(context);
        this.dq = context;
    }

    private void d() {
        FrameLayout frameLayout = new FrameLayout(this.dq);
        this.mp = frameLayout;
        frameLayout.setId(2114387739);
        addView(this.mp);
        FrameLayout frameLayout2 = (FrameLayout) this.mp.findViewById(2114387739);
        this.jy = frameLayout2;
        frameLayout2.removeAllViews();
    }

    private void dq() {
        this.iw = ce.ox(this.dq, this.q.getExpectExpressWidth());
        this.mn = ce.ox(this.dq, this.q.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.iw, this.mn);
        }
        layoutParams.width = this.iw;
        layoutParams.height = this.mn;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void dq(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
        NativeExpressView nativeExpressView = this.q;
        if (nativeExpressView != null) {
            nativeExpressView.dq(view, i, kVar);
        }
    }

    public void dq(j jVar, NativeExpressView nativeExpressView) {
        setBackgroundColor(-1);
        this.f3200d = jVar;
        this.q = nativeExpressView;
        if (c.ia(jVar) == 7) {
            this.s = "rewarded_video";
        } else {
            this.s = "fullscreen_interstitial_ad";
        }
        dq();
        this.q.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }

    public FrameLayout getVideoContainer() {
        return this.jy;
    }
}
