package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.DynamicUnlockView;

/* loaded from: classes.dex */
public class cd implements mn<DynamicUnlockView> {
    private final DynamicUnlockView dq;

    public cd(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        DynamicUnlockView dynamicUnlockView = new DynamicUnlockView(context);
        this.dq = dynamicUnlockView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, mnVar.gx() > 0 ? mnVar.gx() : com.bytedance.sdk.component.adexpress.p.dq() ? 0 : 120);
        dynamicUnlockView.setLayoutParams(layoutParams);
        dynamicUnlockView.setClipChildren(false);
        dynamicUnlockView.setText(mnVar.yy());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void d() {
        DynamicUnlockView dynamicUnlockView = this.dq;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.d();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void dq() {
        DynamicUnlockView dynamicUnlockView = this.dq;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.dq();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public DynamicUnlockView ox() {
        return this.dq;
    }
}
