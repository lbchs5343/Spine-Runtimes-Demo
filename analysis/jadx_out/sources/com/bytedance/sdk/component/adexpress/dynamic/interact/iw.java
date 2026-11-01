package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpShakeView;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;
import com.bytedance.sdk.component.adexpress.widget.ShakeClickView;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw extends fw<ClickSlideUpShakeView> implements jy {
    public iw(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, int i, int i2, int i3, JSONObject jSONObject, boolean z) {
        super(context, dynamicBaseWidget, mnVar);
        this.f1742d = context;
        this.p = mnVar;
        this.ox = dynamicBaseWidget;
        dq(i, i2, i3, jSONObject, mnVar, z);
    }

    private void dq(int i, int i2, int i3, JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, boolean z) {
        this.dq = new ClickSlideUpShakeView(this.f1742d, i, i2, i3, jSONObject, z);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1742d, 300.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(this.f1742d, mnVar.gx() > 0 ? mnVar.gx() : com.bytedance.sdk.component.adexpress.p.dq() ? 0 : 120);
        this.dq.setLayoutParams(layoutParams);
        this.dq.setClipChildren(false);
        this.dq.setSlideText(this.p.yy());
        SlideUpView slideUpView = this.dq;
        if (slideUpView instanceof ClickSlideUpShakeView) {
            ((ClickSlideUpShakeView) slideUpView).setShakeText(this.p.ds());
            final ShakeClickView shakeView = ((ClickSlideUpShakeView) this.dq).getShakeView();
            if (shakeView != null) {
                shakeView.setOnShakeViewListener(new ShakeAnimationView.dq() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.iw.1
                    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.dq
                    public void dq(boolean z2) {
                        if (iw.this.ox.getDynamicClickListener() != null) {
                            iw.this.ox.getDynamicClickListener().dq(z2, iw.this);
                        }
                        shakeView.performClick();
                    }
                });
                shakeView.setOnClickListener((View.OnClickListener) this.ox.getDynamicClickListener());
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.fw
    public void p() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.jy
    public void s() {
        if (this.dq.getParent() != null) {
            ((ViewGroup) this.dq.getParent()).setVisibility(8);
        }
    }
}
