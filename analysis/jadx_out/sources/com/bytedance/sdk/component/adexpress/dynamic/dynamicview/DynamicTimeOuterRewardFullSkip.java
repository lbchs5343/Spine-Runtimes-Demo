package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicTimeOuterRewardFullSkip extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.ox {
    private boolean dq;

    public DynamicTimeOuterRewardFullSkip(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        if (dynamicRootView.getRenderRequest() != null) {
            this.dq = dynamicRootView.getRenderRequest().q();
        }
        this.mn = this.ia;
        ImageView imageView = new ImageView(context);
        this.jy = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        addView(this.jy, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().kx()) {
            return;
        }
        this.jy.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ox
    public void dq(CharSequence charSequence, boolean z, int i, boolean z2) {
        int i2 = 0;
        if (!z && !z2) {
            i2 = 8;
        }
        setVisibility(i2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        Drawable ox;
        super.ia();
        ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER_CROP);
        Drawable dq = com.bytedance.sdk.component.adexpress.p.ox.dq(getContext(), this.ig);
        if (dq != null) {
            ((ImageView) this.jy).setBackground(dq);
        }
        if (this.dq) {
            ox = r.ox(getContext(), "tt_close_btn");
        } else {
            ox = r.ox(getContext(), "tt_skip_btn");
            if (ox != null) {
                ox.setAutoMirrored(true);
            }
        }
        if (ox != null) {
            ((ImageView) this.jy).setImageDrawable(ox);
        }
        setVisibility(8);
        return true;
    }
}
