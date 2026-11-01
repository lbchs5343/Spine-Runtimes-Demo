package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView2;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;

/* loaded from: classes.dex */
public class s extends fw<ClickSlideUpView> {
    public s(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        super(context, dynamicBaseWidget, mnVar);
        dq(mnVar);
    }

    private void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        this.dq = new ClickSlideUpView2(this.f1742d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 81;
        this.dq.setLayoutParams(layoutParams);
        SlideUpView slideUpView = this.dq;
        if (slideUpView instanceof ClickSlideUpView2) {
            ((ClickSlideUpView2) slideUpView).setButtonText(this.p.yy());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.fw, com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void d() {
        this.dq.d();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.fw, com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void dq() {
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.fw
    public void p() {
    }
}
