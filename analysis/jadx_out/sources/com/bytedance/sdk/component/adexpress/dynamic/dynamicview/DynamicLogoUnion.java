package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.PorterDuff;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicLogoUnion extends DynamicBaseWidgetImp {
    public DynamicLogoUnion(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        ImageView imageView = new ImageView(context);
        this.jy = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            this.ia = Math.max(dynamicRootView.getLogoUnionHeight(), this.ia);
        }
        addView(this.jy, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        ((ImageView) this.jy).setImageResource(r.s(getContext(), "tt_ad_logo"));
        ((ImageView) this.jy).setColorFilter(this.ig.mn(), PorterDuff.Mode.SRC_IN);
        return true;
    }
}
