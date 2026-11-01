package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.iw;
import com.bytedance.sdk.component.adexpress.p.mn;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DynamicTimeOuterContainerWidgetImp extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.ox {

    /* renamed from: d, reason: collision with root package name */
    boolean f1722d;
    int dq;
    private int i;
    private boolean le;
    private int r;

    public DynamicTimeOuterContainerWidgetImp(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.i = 0;
        setTag(Integer.valueOf(getClickArea()));
        kk();
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().kx()) {
            return;
        }
        View view = this.jy;
        if (view != null) {
            view.setVisibility(8);
        }
        setVisibility(8);
    }

    private void kk() {
        List<ia> no = this.mp.no();
        if (no == null || no.size() <= 0) {
            return;
        }
        Iterator<ia> it = no.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ia next = it.next();
            if (TextUtils.equals("skip-with-time-skip-btn", next.o().getType())) {
                int dq = (int) mn.dq(this.no, next.ia() + (com.bytedance.sdk.component.adexpress.p.dq() ? next.mp() : 0));
                this.r = dq;
                this.dq = this.mn - dq;
            }
        }
        this.i = this.mn - this.dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ox
    public void dq(CharSequence charSequence, boolean z, int i, boolean z2) {
        if (z2 && this.le != z2) {
            this.le = z2;
            s();
            return;
        }
        if (z && this.f1722d != z) {
            this.f1722d = z;
            s();
        }
        this.f1722d = z;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        if (iw.d(this.q.getRenderRequest().p())) {
            return true;
        }
        super.ia();
        setPadding((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.ox()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.d()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.dq()));
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.le && this.ig != null) {
            setMeasuredDimension(this.r + ((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.ox())) + ((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p())), this.ia);
        } else if (this.f1722d) {
            setMeasuredDimension(this.mn, this.ia);
        } else {
            setMeasuredDimension(this.dq, this.ia);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void s() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.f1722d) {
            layoutParams.leftMargin = this.kk;
        } else {
            layoutParams.leftMargin = this.kk + this.i;
        }
        if (this.le && this.ig != null) {
            layoutParams.leftMargin = ((this.kk + this.i) - ((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.ox()))) - ((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p()));
        }
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            layoutParams.topMargin = this.o - ((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.d()));
        } else {
            layoutParams.topMargin = this.o;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
