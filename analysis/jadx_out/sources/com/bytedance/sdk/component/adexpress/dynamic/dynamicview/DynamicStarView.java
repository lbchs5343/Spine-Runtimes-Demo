package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.adexpress.widget.TTRatingBar2;

/* loaded from: classes.dex */
public class DynamicStarView extends DynamicBaseWidgetImp {
    private int dq;

    public DynamicStarView(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.dq = 0;
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context, null);
        this.jy = tTRatingBar2;
        tTRatingBar2.setTag(Integer.valueOf(getClickArea()));
        addView(this.jy, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        int dq = (int) (mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p()) + this.ig.ox()) + (mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.s()) * 5.0f));
        if (this.mn > dq && 4 == this.ig.ia()) {
            this.dq = (this.mn - dq) / 2;
        }
        this.mn = dq;
        return new FrameLayout.LayoutParams(this.mn, this.ia);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        DynamicRootView dynamicRootView;
        super.ia();
        double mp = this.ig.mp();
        if (com.bytedance.sdk.component.adexpress.p.dq() && (mp < 0.0d || mp > 5.0d || ((dynamicRootView = this.q) != null && dynamicRootView.getRenderRequest() != null && this.q.getRenderRequest().no() != 4))) {
            this.jy.setVisibility(8);
            return true;
        }
        double d2 = (mp < 0.0d || mp > 5.0d) ? 5.0d : mp;
        this.jy.setVisibility(0);
        ((TTRatingBar2) this.jy).dq(d2, this.ig.mn(), (int) this.ig.s(), ((int) mn.dq(this.no, this.ig.d())) + ((int) mn.dq(this.no, this.ig.dq())) + ((int) mn.dq(this.no, this.ig.s())));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void s() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mn, this.ia);
        layoutParams.topMargin = this.o;
        int i = this.kk + this.dq;
        layoutParams.leftMargin = i;
        layoutParams.setMarginStart(i);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
