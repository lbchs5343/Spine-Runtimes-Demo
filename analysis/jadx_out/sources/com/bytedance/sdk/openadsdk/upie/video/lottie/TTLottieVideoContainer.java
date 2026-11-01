package com.bytedance.sdk.openadsdk.upie.video.lottie;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.renderview.d;

/* loaded from: classes3.dex */
public class TTLottieVideoContainer extends FrameLayout implements com.bykv.vk.openvk.component.video.api.renderview.d {
    private d.dq dq;

    public TTLottieVideoContainer(Context context) {
        super(context);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public void dq(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i;
        setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public void dq(com.bykv.vk.openvk.component.video.api.renderview.dq dqVar) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public View getView() {
        return this;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public void setWindowVisibilityChangedListener(d.dq dqVar) {
        this.dq = dqVar;
    }
}
