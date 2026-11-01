package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.utils.r;
import g.awf;

/* loaded from: classes.dex */
public class DynamicTimeOuterSkip extends DynamicButton implements com.bytedance.sdk.component.adexpress.dynamic.ox {
    private boolean dq;

    public DynamicTimeOuterSkip(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null) {
            this.dq = dynamicRootView.getRenderRequest().q();
        }
    }

    private String dq(boolean z) {
        String dq = r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_screen_skip_tx");
        if (!"skip-with-time-skip-btn".equals(this.mp.o().getType())) {
            return dq;
        }
        if (com.bytedance.sdk.component.adexpress.p.dq() && this.dq) {
            dq = "X";
        }
        return z ? dq : "| ".concat(String.valueOf(dq));
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ox
    public void dq(CharSequence charSequence, boolean z, int i, boolean z2) {
        int i2 = 0;
        if (z) {
            ((TextView) this.jy).setText(dq(z2));
        } else {
            if (z2) {
                ((TextView) this.jy).setText(dq(z2));
            }
            if (!z2) {
                i2 = 8;
            }
        }
        setVisibility(i2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicButton, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (!awf.h(this.mp, "skip-with-time-skip-btn")) {
            return true;
        }
        ((TextView) this.jy).setText("");
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (TextUtils.isEmpty(((TextView) this.jy).getText())) {
            setMeasuredDimension(0, this.ia);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void s() {
        if (TextUtils.equals("skip-with-time-skip-btn", this.mp.o().getType())) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mn, this.ia);
            layoutParams.gravity = 8388629;
            setLayoutParams(layoutParams);
            this.jy.setTextAlignment(1);
            ((TextView) this.jy).setGravity(17);
        } else {
            super.s();
        }
        if (!"skip-with-time-skip-btn".equals(this.mp.o().getType())) {
            this.jy.setTextAlignment(1);
            ((TextView) this.jy).setGravity(17);
        }
        setVisibility(8);
    }
}
