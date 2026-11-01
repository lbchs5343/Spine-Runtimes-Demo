package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import java.util.List;

/* loaded from: classes.dex */
public class DynamicSkipCountDownContainer extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.ox {

    /* renamed from: d, reason: collision with root package name */
    private int f1719d;
    private int dq;
    private int r;

    public DynamicSkipCountDownContainer(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        kk();
    }

    private void kk() {
        List<ia> no = this.mp.no();
        if (no == null || no.size() <= 0) {
            return;
        }
        for (ia iaVar : no) {
            if (iaVar.o().dq() == 21) {
                this.dq = (int) (this.mn - mn.dq(this.no, iaVar.ia()));
            }
            if (iaVar.o().dq() == 20) {
                this.f1719d = (int) (this.mn - mn.dq(this.no, iaVar.ia()));
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ox
    public void dq(CharSequence charSequence, boolean z, int i, boolean z2) {
        this.r = i;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        setBackground(getBackgroundDrawable());
        setPadding((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.ox()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.d()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.dq()));
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.r == 0) {
            setMeasuredDimension(this.f1719d, this.ia);
        } else {
            setMeasuredDimension(this.dq, this.ia);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void s() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i = this.kk;
        layoutParams.leftMargin = i;
        layoutParams.topMargin = this.o;
        layoutParams.setMarginStart(i);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
