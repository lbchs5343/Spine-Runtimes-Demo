package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.CircleLongPressView;

/* loaded from: classes.dex */
public class d implements mn {
    private CircleLongPressView dq;

    public d(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        this.dq = new CircleLongPressView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, 180.0f));
        layoutParams.gravity = 17;
        this.dq.setLayoutParams(layoutParams);
        this.dq.setGuideText(mnVar.yy());
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
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public CircleLongPressView ox() {
        return this.dq;
    }
}
