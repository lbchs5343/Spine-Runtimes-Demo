package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicSkipCountDownBtn extends DynamicButton implements com.bytedance.sdk.component.adexpress.dynamic.ox {

    /* renamed from: d, reason: collision with root package name */
    private int f1718d;
    private int[] dq;
    private int r;

    public DynamicSkipCountDownBtn(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        dynamicRootView.setTimeOutListener(this);
    }

    private void kk() {
        int dq = (int) mn.dq(this.no, this.ig.s());
        this.f1718d = ((this.ia - dq) / 2) - this.ig.dq();
        this.r = 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ox
    @SuppressLint({"SetTextI18n"})
    public void dq(CharSequence charSequence, boolean z, int i, boolean z2) {
        String dq = r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_screen_skip_tx");
        if (i == 0) {
            this.jy.setVisibility(0);
            ((TextView) this.jy).setText("| ".concat(String.valueOf(dq)));
            this.jy.measure(-2, -2);
            this.dq = new int[]{this.jy.getMeasuredWidth() + 1, this.jy.getMeasuredHeight()};
            View view = this.jy;
            int[] iArr = this.dq;
            view.setLayoutParams(new FrameLayout.LayoutParams(iArr[0], iArr[1]));
            ((TextView) this.jy).setGravity(17);
            ((TextView) this.jy).setIncludeFontPadding(false);
            kk();
            this.jy.setPadding(this.ig.ox(), this.f1718d, this.ig.p(), this.r);
        }
        requestLayout();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicButton, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        ((TextView) this.jy).setText("");
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (TextUtils.isEmpty(((TextView) this.jy).getText())) {
            setMeasuredDimension(0, this.ia);
        } else {
            setMeasuredDimension(this.mn, this.ia);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void s() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mn, this.ia);
        layoutParams.gravity = 8388629;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
