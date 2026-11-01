package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.BluePressInteractView;

/* loaded from: classes.dex */
public class dq implements mn {
    private BluePressInteractView dq;

    public dq(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        double fd = mnVar.fd();
        fd = fd == 0.0d ? 1.0d : fd;
        double bu = mnVar.bu();
        int dynamicWidth = (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * fd);
        int dynamicWidth2 = (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * (bu != 0.0d ? bu : 1.0d));
        this.dq = new BluePressInteractView(context, dynamicWidth, dynamicWidth2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicWidth, dynamicWidth2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, mnVar.dc() - 7);
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, mnVar.jw() - 3);
        this.dq.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void d() {
        this.dq.d();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void dq() {
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public ViewGroup ox() {
        return this.dq;
    }
}
