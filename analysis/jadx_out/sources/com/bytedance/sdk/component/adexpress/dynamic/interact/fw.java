package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;

/* loaded from: classes.dex */
public class fw<E extends SlideUpView> implements mn<E> {

    /* renamed from: d, reason: collision with root package name */
    protected Context f1742d;
    protected SlideUpView dq;
    protected DynamicBaseWidget ox;
    protected com.bytedance.sdk.component.adexpress.dynamic.ox.mn p;
    protected int s;

    public fw(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        this(context, dynamicBaseWidget, mnVar, 0);
    }

    public fw(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, int i) {
        this.s = i;
        this.f1742d = context;
        this.ox = dynamicBaseWidget;
        this.p = mnVar;
        p();
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
    /* renamed from: iw, reason: merged with bridge method [inline-methods] */
    public E ox() {
        return (E) this.dq;
    }

    public void p() {
        this.dq = new SlideUpView(this.f1742d, this.p.vf());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1742d, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1742d, 100 - this.s);
        this.dq.setLayoutParams(layoutParams);
        try {
            this.dq.setGuideText(this.p.yy());
        } catch (Throwable unused) {
        }
    }
}
