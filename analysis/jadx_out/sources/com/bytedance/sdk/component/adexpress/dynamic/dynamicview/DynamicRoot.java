package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.component.sdk.annotation.ColorInt;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;

/* loaded from: classes.dex */
public class DynamicRoot extends DynamicBaseWidgetImp {
    public d dq;

    public DynamicRoot(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public GradientDrawable dq(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        d dVar = new d(orientation, iArr);
        this.dq = dVar;
        return dVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public d dq(Bitmap bitmap) {
        dq dqVar = new dq(bitmap, this.dq);
        this.dq = dqVar;
        return dqVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public GradientDrawable getDrawable() {
        d dVar = new d();
        this.dq = dVar;
        return dVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        return super.ia();
    }
}
