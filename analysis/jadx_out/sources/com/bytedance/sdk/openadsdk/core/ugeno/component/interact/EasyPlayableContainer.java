package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.content.Context;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class EasyPlayableContainer extends FrameLayout {
    private final mn dq;

    public EasyPlayableContainer(Context context, mn mnVar) {
        super(context);
        this.dq = mnVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.d();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.ox();
        }
    }
}
