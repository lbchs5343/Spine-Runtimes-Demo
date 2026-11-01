package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideRightView;

/* loaded from: classes.dex */
public class f implements mn {

    /* renamed from: d, reason: collision with root package name */
    private Context f1741d;
    private SlideRightView dq;
    private DynamicBaseWidget ox;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.mn p;

    public f(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        this.f1741d = context;
        this.ox = dynamicBaseWidget;
        this.p = mnVar;
        p();
    }

    private void p() {
        this.dq = new SlideRightView(this.f1741d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1741d, 120.0f));
        layoutParams.gravity = 17;
        this.dq.setLayoutParams(layoutParams);
        this.dq.setClipChildren(false);
        this.dq.setGuideText(this.p.yy());
        DynamicBaseWidget dynamicBaseWidget = this.ox;
        if (dynamicBaseWidget != null) {
            this.dq.setOnClickListener((View.OnClickListener) dynamicBaseWidget.getDynamicClickListener());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void d() {
        SlideRightView slideRightView = this.dq;
        if (slideRightView != null) {
            slideRightView.d();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void dq() {
        SlideRightView slideRightView = this.dq;
        if (slideRightView != null) {
            slideRightView.dq();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public ViewGroup ox() {
        return this.dq;
    }
}
