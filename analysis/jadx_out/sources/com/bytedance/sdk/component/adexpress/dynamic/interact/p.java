package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;

/* loaded from: classes.dex */
public class p extends fw<ClickSlideUpView> {
    public p(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        super(context, dynamicBaseWidget, mnVar);
        dq(mnVar);
    }

    private void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        this.dq = new ClickSlideUpView(this.f1742d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1742d, mnVar.gx());
        this.dq.setLayoutParams(layoutParams);
        this.dq.setSlideText(this.p.yy());
        SlideUpView slideUpView = this.dq;
        if (slideUpView instanceof ClickSlideUpView) {
            ((ClickSlideUpView) slideUpView).setButtonText(this.p.o());
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
