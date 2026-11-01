package com.bytedance.sdk.openadsdk.core.component.reward.swiper;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import g.ese;

/* loaded from: classes3.dex */
public class SwiperView extends ese {
    public SwiperView(Context context) {
        super(context);
    }

    @Override // g.ese
    public View dq(int i, int i2) {
        if (this.dq.size() == 0) {
            return new View(getContext());
        }
        View mn = mn(i2);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (mn instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (mn.getParent() instanceof ViewGroup) {
            ((ViewGroup) mn.getParent()).removeView(mn);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        frameLayout.addView(mn, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // g.ese, g.doz
    public void ia(int i) {
        super.ia(i);
    }

    @Override // g.ese, g.doz
    public void kk(int i) {
    }

    @Override // g.ese
    public View mn(int i) {
        return (ViewGroup) this.dq.get(i);
    }
}
