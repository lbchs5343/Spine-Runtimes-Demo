package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.p.no;
import com.bytedance.sdk.component.adexpress.p.iw;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicTimeOuter extends DynamicButton implements com.bytedance.sdk.component.adexpress.dynamic.ox {

    /* renamed from: d, reason: collision with root package name */
    private boolean f1721d;
    private boolean dq;
    private boolean r;

    public DynamicTimeOuter(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        dynamicRootView.setTimeOutListener(this);
        if ("timedown".equals(iaVar.o().getType())) {
            dynamicRootView.setTimedown(this.ia);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ox
    public void dq(CharSequence charSequence, boolean z, int i, boolean z2) {
        if (z2 || this.r) {
            ((TextView) this.jy).setText("");
            setVisibility(8);
            return;
        }
        try {
            if (Integer.parseInt((String) charSequence) <= 0) {
                setVisibility(8);
                return;
            }
        } catch (Exception unused) {
        }
        setVisibility(0);
        if (!z && this.q.getRenderRequest().dq() && iw.d(this.q.getRenderRequest().p())) {
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                ((TextView) this.jy).setText(i + "s");
            } else {
                ((TextView) this.jy).setText(String.format(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_full_skip"), Integer.valueOf(i)));
            }
            this.dq = true;
            return;
        }
        if (com.bytedance.sdk.component.adexpress.p.dq() && !"open_ad".equals(this.q.getRenderRequest().p()) && this.q.getRenderRequest().dq()) {
            this.r = true;
            setVisibility(8);
            return;
        }
        if ("timedown".equals(this.mp.o().getType())) {
            ((TextView) this.jy).setText(charSequence);
            return;
        }
        ((TextView) this.jy).setText(((Object) charSequence) + "s");
        this.f1721d = true;
        if (this.dq) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p() + this.ig.ox()) + no.d(((TextView) this.jy).getText() != null ? r5.toString() : "", this.ig.s(), true)[0]), this.ia);
            layoutParams.gravity = 8388629;
            this.jy.setLayoutParams(layoutParams);
            this.dq = false;
            requestLayout();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicButton, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (iw.d(this.q.getRenderRequest().p())) {
            setVisibility(8);
        }
        if ("timedown".equals(this.mp.o().getType())) {
            ((TextView) this.jy).setText(String.valueOf((int) Double.parseDouble(this.ig.o())));
            return true;
        }
        ((TextView) this.jy).setText(((int) Double.parseDouble(this.ig.o())) + "s");
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
        if (!TextUtils.equals("skip-with-countdowns-video-countdown", this.mp.o().getType()) && !TextUtils.equals("skip-with-time-countdown", this.mp.o().getType())) {
            super.s();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mn, this.ia);
        layoutParams.gravity = 8388627;
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            layoutParams.leftMargin = this.kk;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
